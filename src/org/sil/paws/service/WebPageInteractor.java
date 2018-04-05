package org.sil.paws.service;

import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.paint.Color;
import javafx.scene.web.WebEngine;
import javafx.scene.web.WebView;

import javax.swing.*;

import org.controlsfx.dialog.FontSelectorDialogWithColor;
import org.sil.paws.ApplicationPreferences;
import org.sil.paws.MainApp;
import org.sil.paws.model.FontInfo;
import org.sil.paws.model.Language;
import org.sil.paws.view.RootLayoutController;
import org.sil.utility.StringUtilities;

import com.sun.deploy.uitoolkit.impl.fx.HostServicesFactory;
import com.sun.javafx.application.HostServicesDelegate;

import java.awt.Desktop;
import java.io.File;
import java.io.IOException;
import java.nio.file.*;
import java.util.Locale;
import java.util.ResourceBundle;

/**
 * Every method here is exposed to the script in the browser
 */
public class WebPageInteractor {
	private Language language;
	private WebView viewer;
	private String sOutValue;
	private ResourceBundle bundle;
	RootLayoutController controller;
	MainApp mainApp;
	ApplicationPreferences prefs;

	/**
	 * Requires a language object
	 * 
	 * @param lang
	 */
	public WebPageInteractor(Language lang, WebView viewer, RootLayoutController controller) {
		System.out.println("In web page interactor constructor");
		this.language = lang;
		this.viewer = viewer;
		this.controller = controller;
		this.bundle = controller.getBundle();
		this.mainApp = controller.getMainApp();
		this.prefs = mainApp.getApplicationPreferences();
	}

	/**
	 * Returns the value of the answer attribute/element specified in sXPath
	 * 
	 * @param sXPath
	 *            XPath of the attribute/element
	 */
	public String getAnswerValue(String sXPath) {
		System.out.println("in getAnswerValue; sXPath='" + sXPath + "'");
		sOutValue = language.getValue(sXPath);
		return sOutValue;
	}

	public String getOutValue() {
		if (sOutValue == null) {
			sOutValue = "";
		}
		System.out.println("out value ='" + sOutValue + "'");
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

	// public final void copyFiles(String sFromDirectory, String sToDirectory)
	// {
	// try
	// {
	// String sConfigPath = language.getConfigurationPath();
	// String[] asFromFiles = (new java.io.File(Path.Combine(sConfigPath,
	// sFromDirectory))).list(java.io.File::isFile);
	// String sTargetDirectory = Path.Combine(sConfigPath, sToDirectory);
	// for (String sFile : asFromFiles)
	// {
	// // following two lines are for testing/debugging
	// String sTargetFileName = (new java.io.File(sFile)).getName();
	// String sTargetFile = Path.Combine(sTargetDirectory, sTargetFileName);
	// Files.copy(Paths.get(sFile), Paths.get(Path.Combine(sTargetDirectory,
	// (new java.io.File(sFile)).getName())),
	// StandardCopyOption.COPY_ATTRIBUTES, StandardCopyOption.REPLACE_EXISTING);
	// }
	// }
	// catch (RuntimeException e)
	// {
	//
	// JOptionPane.showMessageDialog(null,
	// "Error trying to copy files from directory '" + sFromDirectory + "' to '"
	// + sToDirectory + "': " + e.getMessage() + "... " +
	// e.getCause().getMessage());
	// }
	//
	// }
	// public final void copyFile(String sFromFile, String sToFile)
	// {
	// try
	// {
	// String sConfigPath = language.getConfigurationPath();
	// // following two lines are for testing/debugging
	// String sSourceFileName = Path.Combine(sConfigPath, sFromFile);
	// String sTargetFileName = Path.Combine(sConfigPath, sToFile);
	// Files.copy(Paths.get(sSourceFileName), Paths.get(sTargetFileName),
	// StandardCopyOption.COPY_ATTRIBUTES, StandardCopyOption.REPLACE_EXISTING);
	// }
	// catch (RuntimeException e)
	// {
	//
	// JOptionPane.showMessageDialog(null, "Error trying to copy file '" +
	// sFromFile + "' to '" + sToFile + "': " + e.getMessage() + "... " +
	// e.getCause().getMessage());
	// }
	//
	// }
	// public final void refreshMenuUI()
	// {
	// viewer.refreshMenuUI();
	// }

	public void launchFile(String sFile) {
		System.out.println("launchFile: file ='" + sFile + "'");
		WebEngine engine = viewer.getEngine();
		String sUrl = engine.getLocation();
		int i = sUrl.lastIndexOf("/");
		showFileToUser(sUrl.substring(0, i + 1) + sFile);
	}

	public void launchWebPage(String sSite) {
		System.out.println("launchWebPage: file ='" + sSite + "'");
		showFileToUser(sSite);
	}

	protected void showFileToUser(String sFileToShow) {
		System.out.println("show file='" + sFileToShow + "'");
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
		System.out.println("saveData called");
		controller.handleSaveLanguage();
	}

	public void setAnswerValue(String sXPath, String sValue) {
		language.setValue(sXPath, sValue);
		System.out.println("setAnswerValue: path='" + sXPath + "'; value = '" + sValue + "'");
	}

	public void setLeftOffAt(String sValue) {
		language.setValue("/paws/leftOffAt", sValue);
		System.out.println("setLeftOffAt = '" + sValue + "'");
	}

	public void languageNameChanged() {
		// TODO: do we want to just show the file in the title bar or also the
		// language name?  If both, then we will need to notify the controller.
		//language.languageNameChanged();
	}

	public void createNewLanguage() {
		controller.handleNewLanguage();
	}

	// public final void findAnswerFile()
	// {
	// boolean fFound = language.openAnswerFile();
	// if (fFound)
	// {
	// sOutValue = "true";
	// }
	// else
	// {
	// sOutValue = "false";
	// }
	// }
	// public final void quitFromNewLanguagePage()
	// {
	// viewer.onExitApplication(this);
	// }
	// public final void fileBrowse(String sFile, String sFilter)
	// {
	// SaveFileDialog dlg = new SaveFileDialog();
	// dlg.Filter = sFilter;
	// dlg.FileName = sFile;
	// dlg.OverwritePrompt = false;
	// if (dlg.ShowDialog() == JOptionPane.OK_OPTION)
	// {
	// sOutValue = dlg.FileName;
	// }
	// else
	// {
	// sOutValue = "Cancel";
	// }
	// }
	// public final void directoryBrowse(String sDirectory, String sDescription)
	// {
	// FolderBrowserDialog dlg = new FolderBrowserDialog();
	// dlg.SelectedPath = sDirectory;
	// dlg.Description = sDescription;
	// dlg.ShowNewFolderButton = true;
	// if (dlg.ShowDialog() == JOptionPane.OK_OPTION)
	// {
	// sOutValue = dlg.SelectedPath;
	// }
	// else
	// {
	// sOutValue = "Cancel";
	// }
	// }
	public final void showTermDefinition(String sMsg) {
		Alert alert = new Alert(AlertType.NONE);
		alert.setTitle(bundle.getString("technicalterm.definition"));
		alert.setHeaderText(null);
		alert.setContentText(sMsg);
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
		System.out.println("changeFontInfo: '" + sFontName + "' at " + sFontSize + " with style '" + sStyle + "' using '" + sFontColor + "'" );
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
	}
}