/**
 * Copyright (c) 2018 SIL International
 * This software is licensed under the LGPL, version 2.1 or later
 * (http://www.gnu.org/licenses/lgpl-2.1.html)
 */
package org.sil.paws.view;

import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.text.MessageFormat;
import java.util.Locale;
import java.util.Map;
import java.util.Optional;
import java.util.ResourceBundle;
import java.util.TreeMap;

import javafx.application.Platform;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.ButtonType;
import javafx.scene.control.CheckMenuItem;
import javafx.scene.control.ChoiceDialog;
import javafx.scene.control.Dialog;
import javafx.scene.control.MenuBar;
import javafx.scene.control.MenuItem;
import javafx.scene.control.Tooltip;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.input.Clipboard;
import javafx.scene.web.WebEngine;
import javafx.scene.web.WebHistory;
import javafx.scene.web.WebView;
import javafx.stage.FileChooser;
import javafx.stage.Stage;

import org.sil.paws.ApplicationPreferences;
import org.sil.paws.Constants;
import org.sil.paws.model.PAWSAnswers;
import org.sil.paws.view.ControllerUtilities;
import org.sil.paws.MainApp;
import org.sil.utility.StringUtilities;

public class RootLayoutController implements Initializable {

	// Reference to the main application
	private MainApp mainApp;

	private String sAboutHeader;
	private String sAboutContent;
	private String sFileFilterDescription;
	private String pawsFilterDescription;

	@FXML
	private Button buttonToolbarFileOpen;
	@FXML
	private Button buttonToolbarFileNew;
	@FXML
	private Button buttonToolbarFileSave;
	@FXML
	private Button buttonToolbarEditCut;
	@FXML
	private Button buttonToolbarEditCopy;
	@FXML
	private Button buttonToolbarEditPaste;
	@FXML
	private Button buttonToolbarBack;
	@FXML
	private Button buttonToolbarForward;
	@FXML
	private Button buttonToolbarRefresh;

	@FXML
	private Tooltip tooltipToolbarFileOpen;
	@FXML
	private Tooltip tooltipToolbarFileNew;
	@FXML
	private Tooltip tooltipToolbarFileSave;
	@FXML
	private Tooltip tooltipToolbarEditCut;
	@FXML
	private Tooltip tooltipToolbarEditCopy;
	@FXML
	private Tooltip tooltipToolbarEditPaste;
	@FXML
	private Tooltip tooltipToolbarBack;
	@FXML
	private Tooltip tooltipToolbarForward;
	@FXML
	private Tooltip tooltipToolbarRefresh;

	@FXML
	private MenuBar menuBar;
	@FXML
	private MenuItem menuItemEditUndo;
	@FXML
	private MenuItem menuItemEditRedo;
	@FXML
	private MenuItem menuItemEditCut;
	@FXML
	private MenuItem menuItemEditCopy;
	@FXML
	private MenuItem menuItemEditPaste;
	@FXML
	private CheckMenuItem menuItemShowStatusBar;

	@FXML
	private WebView browser;
	@FXML
	private WebEngine webEngine;

	protected Clipboard systemClipboard = Clipboard.getSystemClipboard();

	private PAWSAnswers answers;
	private Locale currentLocale;
	ResourceBundle bundle;
	String sDescription;
	org.sil.paws.ApplicationPreferences applicationPreferences;
	boolean fIsDirty;

	@Override
	public void initialize(URL location, ResourceBundle resources) {
		bundle = resources;
		sFileFilterDescription = bundle.getString("file.filterdescription");
		createToolbarButtons(bundle);

		webEngine = browser.getEngine();
		webEngine.setOnAlert(event -> showAlert(event.getData()));

		Platform.runLater(new Runnable() {
			@Override
			public void run() {
				browser.requestFocus();
			}
		});
	}

	protected void createToolbarButtons(ResourceBundle bundle) {
		ControllerUtilities.createToolbarButtonWithImage("newAction.png", buttonToolbarFileNew,
				tooltipToolbarFileNew, bundle.getString("tooltip.new"));
		ControllerUtilities.createToolbarButtonWithImage("openAction.png", buttonToolbarFileOpen,
				tooltipToolbarFileOpen, bundle.getString("tooltip.open"));
		ControllerUtilities.createToolbarButtonWithImage("saveAction.png", buttonToolbarFileSave,
				tooltipToolbarFileSave, bundle.getString("tooltip.save"));
		ControllerUtilities.createToolbarButtonWithImage("cutAction.png", buttonToolbarEditCut,
				tooltipToolbarEditCut, bundle.getString("tooltip.cut"));
		ControllerUtilities.createToolbarButtonWithImage("copyAction.png", buttonToolbarEditCopy,
				tooltipToolbarEditCopy, bundle.getString("tooltip.copy"));
		ControllerUtilities.createToolbarButtonWithImage("pasteAction.png", buttonToolbarEditPaste,
				tooltipToolbarEditPaste, bundle.getString("tooltip.paste"));
		ControllerUtilities.createToolbarButtonWithImage("back.png", buttonToolbarBack,
				tooltipToolbarBack, bundle.getString("tooltip.back"));
		ControllerUtilities.createToolbarButtonWithImage("forward.png", buttonToolbarForward,
				tooltipToolbarForward, bundle.getString("tooltip.forward"));
		ControllerUtilities.createToolbarButtonWithImage("refresh.png", buttonToolbarRefresh,
				tooltipToolbarRefresh, bundle.getString("tooltip.refresh"));
	}

	private void showAlert(String message) {
		Dialog<Void> alert = new Dialog<>();
		alert.getDialogPane().setContentText(message);
		alert.getDialogPane().getButtonTypes().add(ButtonType.OK);
		alert.showAndWait();
	}

	/**
	 * Is called by the main application to give a reference back to itself.
	 * 
	 * @param mainApp
	 */
	public void setMainApp(MainApp mainApp) {
		this.mainApp = mainApp;
	}

	public void setLocale(Locale currentLocale) {
		this.currentLocale = currentLocale;
		pawsFilterDescription = sFileFilterDescription + " (" + Constants.PAWS_DATA_FILE_EXTENSIONS
				+ ")";

	}

	@FXML
	public void handleNewLanguage() {
	}

	@FXML
	private void handleOpenLanguage() {
		if (fIsDirty) {
			askAboutSaving();
		}
		doFileOpen(false);
		answers = mainApp.getAnswers();
		browser.requestFocus();
	}

	public void doFileOpen(Boolean fCloseIfCanceled) {
		File file = ControllerUtilities.getFileToOpen(mainApp, pawsFilterDescription,
				Constants.PAWS_DATA_FILE_EXTENSIONS);
		if (file != null) {
			mainApp.loadAnswers(file);
			String sDirectoryPath = file.getParent();
			applicationPreferences.setLastOpenedDirectoryPath(sDirectoryPath);
		} else if (fCloseIfCanceled) {
			// probably first time running and user chose to open a file
			// but then canceled. We quit.
			System.exit(0);
		}
	}

	@FXML
	public void handleCloseLanguage() {
	}

	@FXML
	private void handleSaveLanguage() {
	}

	@FXML
	private void handleSaveAs() {
	}

	@FXML
	private void handleFileLocations() {
		webEngine.load("file locations page");
	}

	@FXML
	protected void handleCopy() {
		// browser.copy();
		browser.requestFocus();
	}

	@FXML
	protected void handleCut() {
		// browser.cut();
	}

	@FXML
	protected void handlePaste() {
		// if (!systemClipboard.hasContent(DataFormat.PLAIN_TEXT)) {
		// adjustForEmptyClipboard();
		// return;
		// }
		// browser.paste();
		browser.requestFocus();
	}

	@FXML
	protected void handleUndo() {
		// browser.undo();
	}

	@FXML
	protected void handleRedo() {
		// browser.redo();
	}

	@FXML
	private void handleMenuShowStatusBar() {
		applicationPreferences.setShowStatusBar(menuItemShowStatusBar.isSelected());
	}

	/**
	 * Change interface language.
	 */
	@FXML
	private void handleChangeInterfaceLanguage() {
		// apparently changing the locale can reset the tree contents so
		// we ask about saving the data first
		if (fIsDirty) {
			askAboutSaving();
		}

		Map<String, ResourceBundle> validLocales = new TreeMap<String, ResourceBundle>();
		getListOfValidLocales(validLocales);

		ChoiceDialog<String> dialog = new ChoiceDialog<>(
				currentLocale.getDisplayLanguage(currentLocale), validLocales.keySet());
		dialog.setTitle(bundle.getString("menu.changeinterfacelanguage"));
		dialog.setHeaderText(bundle.getString("dialog.chooseinterfacelanguage"));
		dialog.setContentText(bundle.getString("dialog.chooselanguage"));

		Optional<String> result = dialog.showAndWait();
		result.ifPresent(locale -> mainApp.setLocale(validLocales.get(locale).getLocale()));
	}

	private void getListOfValidLocales(Map<String, ResourceBundle> choices) {
		Locale[] locales = Locale.getAvailableLocales();
		for (Locale locale : locales) {
			ResourceBundle rb = ResourceBundle.getBundle("org.sil.lingtree.resources.LingTree",
					locale);
			if (rb != null) {
				String localeName = rb.getLocale().getDisplayName(currentLocale);
				if (!StringUtilities.isNullOrEmpty(localeName)) {
					choices.putIfAbsent(localeName, rb);
				}
			}
		}
	}

	public void askAboutSaving() {
		Alert alert = new Alert(AlertType.CONFIRMATION, "", ButtonType.YES, ButtonType.NO);
		alert.setTitle(MainApp.kApplicationTitle);
		alert.setHeaderText(bundle.getString("file.asktosaveheader"));
		alert.setContentText(bundle.getString("file.asktosavecontent"));

		Stage stage = (Stage) alert.getDialogPane().getScene().getWindow();
		stage.getIcons().add(mainApp.getNewMainIconImage());

		Optional<ButtonType> result = alert.showAndWait();
		if (result.get() == ButtonType.YES) {
			handleSaveLanguage();
		}
	}

	@FXML
	private void handleBack() {
		final WebHistory history = webEngine.getHistory();
//		ObservableList<WebHistory.Entry> entryList = history.getEntries();
//		int currentIndex = history.getCurrentIndex();
		
		Platform.runLater(new Runnable() {
			public void run() {
				history.go(-1);
			}
		});
	}

	@FXML
	private void handleForward() {
		final WebHistory history = webEngine.getHistory();
//		ObservableList<WebHistory.Entry> entryList = history.getEntries();
//		int currentIndex = history.getCurrentIndex();
		
		Platform.runLater(new Runnable() {
			public void run() {
				history.go(1);
			}
		});
	}

	@FXML
	private void handleRefresh() {
		webEngine.reload();
	}

	/**
	 * Opens an about dialog.
	 */
	@FXML
	private void handleAbout() {
		webEngine.load("about page");
	}

	@FXML
	private void handleResources() {
		webEngine.load("resources page");
	}

	@FXML
	private void handleLanguage() {
		webEngine.load("language page");
	}

	/**
	 * Closes the application.
	 */
	@FXML
	private void handleExit() {
		System.exit(0);
	}

	public PAWSAnswers getAnswers() {
		return answers;
	}

	public void setAnswers(PAWSAnswers answers) {
		this.answers = answers;
	}

	public boolean isDirty() {
		return fIsDirty;
	}

	private void markAsClean() {
		fIsDirty = false;
		Stage primaryStage = mainApp.getPrimaryStage();
		String sStageTitle = primaryStage.getTitle();
		sStageTitle = sStageTitle.replaceAll("\\*", "");
		primaryStage.setTitle(sStageTitle);
	}

	private void markAsDirty() {
		fIsDirty = true;
		Stage primaryStage = mainApp.getPrimaryStage();
		String sStageTitle = primaryStage.getTitle();
		if (!sStageTitle.endsWith("*")) {
			primaryStage.setTitle(sStageTitle + "*");
		}
	}

	// code taken from
	// http://bekwam.blogspot.com/2014/10/cut-copy-and-paste-from-javafx-menubar.html
	@FXML
	public void handleShowingEditMenu() {
		if (systemClipboard == null) {
			systemClipboard = Clipboard.getSystemClipboard();
		}

		if (systemClipboard.hasString()) {
			adjustForClipboardContents();
		} else {
			adjustForEmptyClipboard();
		}

		if (anythingSelected()) {
			adjustForSelection();

		} else {
			adjustForDeselection();
		}
		// if (browser.isUndoAvailable()) {
		// menuItemEditUndo.setDisable(false);
		// } else {
		// menuItemEditUndo.setDisable(true);
		// }
		// if (browser.isRedoAvailable()) {
		// menuItemEditRedo.setDisable(false);
		// } else {
		// menuItemEditRedo.setDisable(true);
		// }
	}

	// **************************************************
	// code taken from
	// http://bekwam.blogspot.com/2014/10/cut-copy-and-paste-from-javafx-menubar.html
	public void adjustForEmptyClipboard() {
		menuItemEditPaste.setDisable(true); // nothing to paste
	}

	// code taken from
	// http://bekwam.blogspot.com/2014/10/cut-copy-and-paste-from-javafx-menubar.html
	private void adjustForClipboardContents() {
		menuItemEditPaste.setDisable(false); // something to paste
	}

	// code taken from
	// http://bekwam.blogspot.com/2014/10/cut-copy-and-paste-from-javafx-menubar.html
	private void adjustForSelection() {
		menuItemEditCut.setDisable(false);
		menuItemEditCopy.setDisable(false);
	}

	// code taken from
	// http://bekwam.blogspot.com/2014/10/cut-copy-and-paste-from-javafx-menubar.html
	private void adjustForDeselection() {
		menuItemEditCut.setDisable(true);
		menuItemEditCopy.setDisable(true);
	}

	public void setViewItemUsed(int value) {
		// default is to do nothing
	}

	boolean anythingSelected() {
		String sSelected = null;// = browser.getSelectedText();
		if (!StringUtilities.isNullOrEmpty(sSelected)) {
			return true;
		}
		return false;
	}

}