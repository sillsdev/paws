package org.sil.paws.service;

import javafx.application.Platform;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.paint.Color;
import javafx.scene.web.WebEngine;
import javafx.stage.DirectoryChooser;
import javafx.stage.FileChooser;
import javafx.stage.Stage;

import org.sil.paws.ApplicationPreferences;
import org.sil.paws.Constants;
import org.sil.paws.MainApp;
import org.sil.paws.model.FontInfo;
import org.sil.paws.model.Language;
import org.sil.paws.view.RootLayoutController;
import org.sil.utility.StringUtilities;
import org.sil.utility.view.ObservableResourceFactory;

import com.sun.deploy.uitoolkit.impl.fx.HostServicesFactory;
import com.sun.javafx.application.HostServicesDelegate;

import java.awt.Desktop;
import java.io.File;
import java.io.IOException;
import java.util.Locale;
import java.util.ResourceBundle;

/**
 * Every method here is exposed to the script in the browser
 */
public class WebPageInteractor {
	private Language language;
	private WebEngine engine;
	private String sOutValue;
	private ResourceBundle bundle;
	RootLayoutController controller;
	MainApp mainApp;
	ApplicationPreferences prefs;

	private static final ObservableResourceFactory RESOURCE_FACTORY = ObservableResourceFactory.getInstance();
	static {
		RESOURCE_FACTORY.setResources(ResourceBundle.getBundle(Constants.RESOURCE_LOCATION,
				new Locale("en")));
	}

	/**
	 * Requires a language object
	 * 
	 * @param lang
	 */
	public WebPageInteractor(Language lang, WebEngine engine, RootLayoutController controller) {
		this.language = lang;
		this.engine = engine;
		this.controller = controller;
		this.bundle = controller.getBundle();
		RESOURCE_FACTORY.setResources(ResourceBundle.getBundle(Constants.RESOURCE_LOCATION,
				bundle.getLocale()));
	}

	/**
	 * Returns the value of the answer attribute/element specified in sXPath
	 * 
	 * @param sXPath
	 *            XPath of the attribute/element
	 */
	public String getAnswerValue(String sXPath) {
		sOutValue = language.getValue(sXPath);
		return sOutValue;
	}

	public String getInterfaceLanguage() {
		sOutValue = prefs.getLastLocaleLanguage();
		if (StringUtilities.isNullOrEmpty(sOutValue)) {
			sOutValue = "en";
		}
		return sOutValue;
	}

	public void setInterfaceLanguage(String sLangCode) {
		mainApp.setLocale(new Locale(sLangCode));
	}

	public void saveInterfaceLanguage() {
		Locale locale = mainApp.getLocale();
		prefs.setLastLocaleLanguage(locale.getLanguage());
	}

	public void launchFile(String sFile) {
		String sUrl = engine.getLocation();
		int i = sUrl.lastIndexOf("/");
		showFileToUser(sUrl.substring(0, i + 1) + sFile);
	}

	public void launchWebPage(String sSite) {
		showFileToUser(sSite);
	}

	public void load(String page) {
		// We try and catch the XML and LeftOffAt pages here before
		// actually loading them, if possible.
		if (page.endsWith(".xml")) {
			Platform.runLater(new Runnable() {
				@Override
				public void run() {
					controller.transformAndLoadPage(page);
				}
			});
		} else if (page.endsWith("LeftOffAt")) {
			controller.handleBack();
		} else {
			engine.load(page);
		}
	}

	protected void showFileToUser(String sFileToShow) {
		MainApp mainApp = controller.getMainApp();
		if (!mainApp.getOperatingSystem().equals("Mac OS X")) {
			HostServicesDelegate hostServices = HostServicesFactory.getInstance(mainApp);
			hostServices.showDocument(sFileToShow);
		} else {
			if (Desktop.isDesktopSupported()) {
				try {
					File myFile = new File(sFileToShow);
					Desktop.getDesktop().open(myFile);
				} catch (IOException ex) {
					// no application registered for PDFs
				}
			}
		}
	}

	public void saveData() {
		controller.handleSaveLanguage();
	}

	public void setAnswerValue(String sXPath, String sValue) {
		language.setValue(sXPath, sValue);
	}

	public void setLeftOffAt(String sValue) {
		language.setValue("/paws/leftOffAt", sValue);
		saveData();
	}

	public void languageNameChanged() {
		// TODO: do we want to just show the file in the title bar or also the
		// language name? If both, then we will need to notify the controller.
		// language.languageNameChanged();
	}

	public void createNewLanguage() {
		controller.handleNewLanguage();
	}

	public String fileBrowse(String sFile, String sDescription, String sExtensions) {
		sOutValue = "Cancel";
		Platform.runLater(new Runnable() {

			@Override
			public void run() {
				try {
					FileChooser fileChooser = new FileChooser();
					// Set extension filter
					FileChooser.ExtensionFilter extFilter = new FileChooser.ExtensionFilter(
							sDescription, sExtensions);
					fileChooser.getExtensionFilters().add(extFilter);
					fileChooser.setInitialFileName(sFile);
					String sDirectoryPath = prefs.getLastOpenedDirectoryPath();
					if (!StringUtilities.isNullOrEmpty(sDirectoryPath)) {
						File initialDirectory = new File(sDirectoryPath);
						if (initialDirectory.exists() && initialDirectory.isDirectory()) {
							fileChooser.setInitialDirectory(initialDirectory);
						}
					}
					File file = fileChooser.showSaveDialog(mainApp.getPrimaryStage());

					if (file == null) {
						sOutValue = "Cancel";
					} else {
						sOutValue = file.getAbsolutePath();
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
		return sOutValue;
	}

	public String directoryBrowse(String sDirectory, String sDescription) {
		sOutValue = "Cancel";
		Platform.runLater(new Runnable() {

			@Override
			public void run() {
				try {
					DirectoryChooser dlg = new DirectoryChooser();
					dlg.setInitialDirectory(new File(sDirectory));
					dlg.setTitle(sDescription);
					File result = dlg.showDialog(mainApp.getPrimaryStage());
					if (result == null) {
						sOutValue = "Cancel";
					} else {
						sOutValue = result.getAbsolutePath();
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
		return sOutValue;
	}

	public final void showTermDefinition(String sMsg) {
		Alert alert = new Alert(AlertType.INFORMATION);
		alert.setTitle(RESOURCE_FACTORY.getStringBinding("technicalterm.definition").get());
		alert.setHeaderText(null);
		alert.setContentText(sMsg);
		Stage stage = (Stage) alert.getDialogPane().getScene().getWindow();
		stage.getIcons().add(mainApp.getNewMainIconImage());
		alert.showAndWait();
	}

	public final void changeFontInfo() {
		final String ksFontName = "//language/font/fontName";
		final String ksFontSize = "//language/font/fontSize";
		final String ksFontColor = "//language/font/fontColor";
		final String ksBold = "//language/font/@bold";
		final String ksItalic = "//language/font/@italic";
		final String ksUnder = "//language/font/@under";
		final String ksStrike = "//language/font/@strike";
		final String ksTrue = "True";
		final String ksFalse = "False";
		final String kBold = "Bold";
		final String kItalic = "Italic";
		final String kRegular = "Regular";
		String sFontName = language.getValue(ksFontName);
		String sFontSize = language.getValue(ksFontSize);
		String sFontColor = language.getValue(ksFontColor);
		String sStyle = kRegular;
		String sBold = language.getValue(ksBold);
		if (ksTrue.equals(sBold)) {
			sStyle = kBold;
		}
		String sItalic = language.getValue(ksItalic);
		if (ksTrue.equals(sItalic)) {
			if (ksTrue.equals(sBold)) {
				sStyle = sStyle + " " + kItalic;
			} else {
				sStyle = kItalic;
			}
		}
		FontInfo fontInfo = new FontInfo(sFontName, Double.parseDouble(sFontSize), sStyle);
		try {
			fontInfo.setColor(Color.web(sFontColor));
		} catch (IllegalArgumentException e) {
			fontInfo.setColor(Color.BLACK);
		}
		fontInfo = controller.showFontInfo(fontInfo);
		// set the values
		language.setValue(ksFontName, fontInfo.getFontFamily());
		language.setValue(ksFontSize, String.valueOf(fontInfo.getFontSize()));
		sFontColor = StringUtilities.toRGBCode(fontInfo.getColor());
		language.setValue(ksFontColor, sFontColor);
		sStyle = fontInfo.getFontType();
		String sBoolean = sStyle.contains(kBold) ? ksTrue : ksFalse;
		language.setValue(ksBold, sBoolean);
		sBoolean = sStyle.contains(kItalic) ? ksTrue : ksFalse;
		language.setValue(ksItalic, sBoolean);
		controller.handleSaveLanguage();
		controller.initCSS();
	}

	public void setLanguage(Language language) {
		this.language = language;
	}

	public void setMainApp(MainApp mainApp) {
		this.mainApp = mainApp;
		this.prefs = mainApp.getApplicationPreferences();
	}
}
