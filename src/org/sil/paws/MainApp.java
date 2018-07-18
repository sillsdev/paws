// Copyright (c) 2017-2018 SIL International
// This software is licensed under the LGPL, version 2.1 or later
// (http://www.gnu.org/licenses/lgpl-2.1.html)

package org.sil.paws;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Locale;
import java.util.Optional;
import java.util.ResourceBundle;

import org.sil.paws.backendprovider.XMLBackEndProvider;
import org.sil.paws.ApplicationPreferences;
import org.sil.paws.model.Language;
import org.sil.paws.service.DatabaseMigrator;
import org.sil.paws.view.ControllerUtilities;
import org.sil.paws.view.RootLayoutController;

import javafx.application.Application;
import javafx.application.Platform;
import javafx.event.EventHandler;
import javafx.fxml.FXMLLoader;
import javafx.stage.Screen;
import javafx.stage.Stage;
import javafx.stage.StageStyle;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.ButtonType;
import javafx.scene.control.Dialog;
import javafx.scene.control.Label;
import javafx.scene.control.MenuBar;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.ButtonBar.ButtonData;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.input.KeyCode;
import javafx.scene.input.KeyEvent;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.Region;
import javafx.scene.layout.VBox;

public class MainApp extends Application {
	private static final String kApplicationIconResource = "file:resources/images/PAWS128x128.png";
	private Stage primaryStage;
	private BorderPane rootLayout;
	private Locale locale;
	public static String kApplicationTitle = "PAWS Starter Kit";
	private RootLayoutController controller;
	private ApplicationPreferences applicationPreferences;
	private final String sOperatingSystem = System.getProperty("os.name");
	static String[] userArgs;
	private XMLBackEndProvider xmlBackEndProvider;
	private Language language;
	private Alert startupAlert;

	public Stage getPrimaryStage() {
		return primaryStage;
	}

	public ApplicationPreferences getApplicationPreferences() {
		return applicationPreferences;
	}

	public XMLBackEndProvider getBackEndProvider() {
		return xmlBackEndProvider;
	}

	@Override
	public void start(Stage primaryStage) {
		this.primaryStage = primaryStage;
		this.primaryStage.setTitle(kApplicationTitle);
		this.primaryStage.getIcons().add(getNewMainIconImage());
		try {
			Platform.runLater(new Runnable() {
				@Override
				public void run() {
					createSplashScreen();

					applicationPreferences = new ApplicationPreferences(this);
					locale = new Locale(applicationPreferences.getLastLocaleLanguage());
					language = new Language();
					xmlBackEndProvider = new XMLBackEndProvider(language, locale);
					restoreWindowSettings();

					initRootLayout();
				}
			});
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// This dialog is a kind of splash screen that tells the user to wait
	// until the main app is loaded
	private void createSplashScreen() {
		startupAlert = new Alert(AlertType.INFORMATION);
		startupAlert.setTitle("PAWS");
		startupAlert.setHeaderText("PAWS Starter Kit");
		// following does not show in installed version
//		startupAlert.setContentText("Please wait;\nFavor de esperar;\nS'il vous plaît, attendez");
//		startupAlert.setGraphic(new ImageView(this.getClass().getResource("resources/images/SILLogo.png").toString()));
		Stage stage = (Stage) startupAlert.getDialogPane().getScene().getWindow();
		stage.getIcons().add(getNewMainIconImage());
		stage.initStyle(StageStyle.UNIFIED);
		stage.show();
	}

	public static void main(String[] args) {
		userArgs = args;
		launch(args);
	}

	/**
	 * Initializes the root layout.
	 */
	public void initRootLayout() {
		try {
			// Load root layout from fxml file.
			FXMLLoader loader = new FXMLLoader();
			loader.setLocation(MainApp.class.getResource("view/fxml/RootLayout.fxml"));
			ResourceBundle bundle = ResourceBundle.getBundle(Constants.RESOURCE_LOCATION, locale);
			loader.setResources(bundle);
			rootLayout = (BorderPane) loader.load();
			if (getOperatingSystem().equals("Mac OS X")) {
				adjustMenusForMacOSX();
			}

			// Show the scene containing the root layout.
			Scene scene = new Scene(rootLayout);

			primaryStage.setScene(scene);
			controller = loader.getController();
			controller.setMainApp(this);
			controller.setLocale(locale);

			File file;
			if (userArgs != null && userArgs.length > 0) {
				// User double-clicked on file name
				// userArgs[0] is the file path
				file = new File(userArgs[0]);
			} else {
				// Try to load last opened file.
				file = applicationPreferences.getLastOpenedFile();
			}
			if (file != null && file.exists()) {
				loadLanguageData(file);
				controller.setLanguage(language);
				controller.showLanguageLastPage();
			} else {
				closeStartupAlert();
				boolean fSucceeded = askUserForNewOrToOpenExistingFile(bundle, controller);
				if (!fSucceeded) {
					System.exit(0);
				}
			}

			// updateStatusBarNumberOfItems("");

			primaryStage.show();
			closeStartupAlert();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println("non-IO Exception caught!");
			e.printStackTrace();
		}
	}

	private void closeStartupAlert() {
		if (startupAlert.isShowing()) {
			startupAlert.close();
		}
	}

	public void loadLanguageData(File file) {
		 DatabaseMigrator migrator = new DatabaseMigrator(file);
		 String version = migrator.getVersion();
		 if (!version.equals(Constants.CURRENT_DATABASE_VERSION)) {
			 migrator.doMigration();
		 }
		xmlBackEndProvider.loadLanguageDataFromFile(file);
		language = xmlBackEndProvider.getLanguage();
		applicationPreferences.setLastOpenedFilePath(file);
		applicationPreferences.setLastOpenedDirectoryPath(file.getParent());
		updateStageTitle(file);
	}

	public void saveLanguageFile(File file) {
		xmlBackEndProvider.saveLanguageDataToFile(file);
		applicationPreferences.setLastOpenedFilePath(file);
		applicationPreferences.setLastOpenedDirectoryPath(file.getParent());
	}

	public File getLanguageFile() {
		String filePath = applicationPreferences.getLastOpenedFilePath();
		if (filePath != null) {
			return new File(filePath);
		} else {
			return null;
		}
	}

	public void updateStageTitle(File file) {
		if (file != null) {
			String sFileNameToUse = file.getName();
			if (controller.isDirty()) {
				sFileNameToUse += "*";
			}
			primaryStage.setTitle(kApplicationTitle + " - " + sFileNameToUse);
		} else {
			primaryStage.setTitle(kApplicationTitle);
		}
	}

	protected void adjustMenusForMacOSX() {
		VBox vbox = (VBox) rootLayout.getChildren().get(0);
		MenuBar menuBar = (MenuBar) vbox.getChildren().get(0);
		menuBar.useSystemMenuBarProperty().set(true);
	}

	private void restoreWindowSettings() {
		primaryStage = applicationPreferences.getLastWindowParameters(
				ApplicationPreferences.LAST_WINDOW, primaryStage, 660.0, 1000.);
	}

	/**
	 * @return the mainIconImage
	 */
	public Image getNewMainIconImage() {
		Image img = ControllerUtilities.getIconImageFromURL(kApplicationIconResource);
		return img;
	}

	public String getOperatingSystem() {
		return sOperatingSystem;
	}

	protected boolean askUserForNewOrToOpenExistingFile(ResourceBundle bundle,
			RootLayoutController controller) {
		Alert alert = new Alert(AlertType.CONFIRMATION);
		alert.setTitle(bundle.getString("program.name"));
		alert.setHeaderText(bundle.getString("file.initiallynotfound"));
		alert.setContentText(bundle.getString("file.chooseanoption"));
		ButtonType buttonCreateNewLanguage = new ButtonType(
				bundle.getString("label.createnewlanguage"), ButtonData.OK_DONE);
		ButtonType buttonOpenExistingLanguage = new ButtonType(
				bundle.getString("label.openexistinglanguage"));
		ButtonType buttonCancel = new ButtonType(bundle.getString("label.cancel"),
				ButtonData.CANCEL_CLOSE);

		alert.getButtonTypes().setAll(buttonCreateNewLanguage, buttonOpenExistingLanguage,
				buttonCancel);

		alert.setResizable(true);
		((Button)alert.getDialogPane().lookupButton(buttonCreateNewLanguage)).setPrefWidth(250);
		((Button)alert.getDialogPane().lookupButton(buttonOpenExistingLanguage)).setPrefWidth(250);
		((Button)alert.getDialogPane().lookupButton(buttonCancel)).setPrefWidth(Region.USE_PREF_SIZE);
		Stage stage = (Stage) alert.getDialogPane().getScene().getWindow();
		stage.getIcons().add(getNewMainIconImage());

		boolean fSucceeded = true;
		Optional<ButtonType> result = alert.showAndWait();
		if (result.isPresent() && result.get() == buttonCreateNewLanguage) {
			controller.handleNewLanguage();
			if (controller.getLanguage() == null) {
				// The user canceled creating a new project
				fSucceeded = false;
			}
		} else if (result.get() == buttonOpenExistingLanguage) {
			String defaultDirectory = controller.tryToGetDefaultDirectoryPath();
			applicationPreferences.setLastOpenedDirectoryPath(defaultDirectory);
			controller.doFileOpen(true);
			controller.setLanguage(language);
			controller.showLanguageLastPage();
		} else {
			// ... user chose CANCEL or closed the dialog
			System.exit(0);
		}
		return fSucceeded;
	}

	@Override
	public void stop() throws IOException {
		applicationPreferences.setLastWindowParameters(ApplicationPreferences.LAST_WINDOW,
				primaryStage);
		applicationPreferences.setLastLocaleLanguage(locale.getLanguage());
		if (controller.isDirty()) {
			controller.askAboutSaving();
		}
	}
	
	public Locale getLocale() {
		return locale;
	}

	public void setLocale(Locale locale) {
		this.locale = locale;
	}

	public XMLBackEndProvider getXmlBackEndProvider() {
		return xmlBackEndProvider;
	}

	public Language getAnswers() {
		return language;
	}

	public void setAnswers(Language answers) {
		this.language = answers;
	}

}
