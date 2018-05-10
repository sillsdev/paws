/**
 * Copyright (c) 2018 SIL International
 * This software is licensed under the LGPL, version 2.1 or later
 * (http://www.gnu.org/licenses/lgpl-2.1.html)
 */
package org.sil.paws.view;

import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.nio.file.CopyOption;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.nio.file.attribute.FileAttribute;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Optional;
import java.util.ResourceBundle;
import java.util.TreeMap;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;

import javafx.animation.KeyFrame;
import javafx.animation.Timeline;
import javafx.application.Application;
import javafx.application.Platform;
import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javafx.collections.ObservableList;
import javafx.concurrent.Task;
import javafx.concurrent.Worker.State;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Cursor;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.ButtonType;
import javafx.scene.control.CheckMenuItem;
import javafx.scene.control.ChoiceDialog;
import javafx.scene.control.ContextMenu;
import javafx.scene.control.Dialog;
import javafx.scene.control.Label;
import javafx.scene.control.Menu;
import javafx.scene.control.MenuBar;
import javafx.scene.control.MenuItem;
import javafx.scene.control.ProgressBar;
import javafx.scene.control.SeparatorMenuItem;
import javafx.scene.control.Tooltip;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.input.Clipboard;
import javafx.scene.input.MouseButton;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.VBox;
import javafx.scene.paint.Color;
import javafx.scene.text.Font;
import javafx.scene.web.WebEngine;
import javafx.scene.web.WebHistory;
import javafx.scene.web.WebView;
import javafx.stage.FileChooser;
import javafx.stage.Stage;
import javafx.util.Duration;
import netscape.javascript.JSObject;

import org.controlsfx.dialog.FontSelectorDialogWithColor;
import org.sil.paws.model.FontInfo;
import org.sil.paws.ApplicationPreferences;
import org.sil.paws.Constants;
import org.sil.paws.model.Language;
import org.sil.paws.service.ObservableResourceFactory;
import org.sil.paws.service.OutputGenerator;
import org.sil.paws.service.ValidLocaleCollector;
import org.sil.paws.service.WebPageInteractor;
import org.sil.paws.view.ControllerUtilities;
import org.sil.paws.MainApp;
import org.sil.utility.HandleExceptionMessage;
import org.sil.utility.StringUtilities;
import org.sil.utility.XsltParameter;
import org.w3c.dom.Document;
import org.w3c.dom.Node;

import sun.util.BuddhistCalendar;

public class RootLayoutController implements Initializable {

	// Reference to the main application
	private MainApp mainApp;

	private String sAboutHeader;
	private String sAboutContent;
	private String sFileFilterDescription;
	private String pawsFilterDescription;

	@FXML
	BorderPane mainPane;
	@FXML
	VBox topVBox;
	@FXML
	private Button buttonToolbarFileOpen;
	@FXML
	private Button buttonToolbarFileNew;
	@FXML
	private Button buttonToolbarGenerateFiles;
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
	private Tooltip tooltipToolbarGenerateFiles;
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
	private Menu menuFile;
	@FXML
	private MenuItem menuItemFileNew;
	@FXML
	private MenuItem menuItemFileOpen;
	@FXML
	private MenuItem menuItemFileClose;
	@FXML
	private MenuItem menuItemFileSaveAs;
	@FXML
	private MenuItem menuItemFileGenerateFiles;
	@FXML
	private MenuItem menuItemFileLocations;
	@FXML
	private MenuItem menuItemFileExit;
	@FXML
	private Menu menuEdit;
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
	private Menu menuLanguage;
	@FXML
	private MenuItem menuItemLanguageProperties;
	@FXML
	private MenuItem menuItemLanguageLocations;
	@FXML
	private Menu menuView;
	@FXML
	private CheckMenuItem menuItemShowStatusBar;
	@FXML
	private MenuItem menuItemViewBack;
	@FXML
	private MenuItem menuItemViewForward;
	@FXML
	private MenuItem menuItemViewMakeLarger;
	@FXML
	private MenuItem menuItemViewMakeSmaller;
	@FXML
	private MenuItem menuItemViewRefresh;
	@FXML
	private Menu menuSettings;
	@FXML
	private MenuItem menuChangeInterfaceLanguage;
	@FXML
	private Menu menuHelp;
	@FXML
	private MenuItem menuHelpResources;
	@FXML
	private MenuItem menuHelpAbout;

	@FXML
	private WebView browser;
	@FXML
	private WebEngine webEngine;

	@FXML
	private VBox statusBar;
	@FXML
	private Label labelPageDescription;
	@FXML
	private Label labelPageCount;
	@FXML
	ProgressBar progressBarGenerateFiles;

	ContextMenu contextMenu;
	MenuItem contextMenuMakeLarger;
	MenuItem contextMenuMakeSmaller;
	MenuItem contextMenuBack;
	MenuItem contextMenuForward;
	MenuItem contextMenuRefresh;

	protected Clipboard systemClipboard = Clipboard.getSystemClipboard();

	private Language language;
	private Locale currentLocale;
	ResourceBundle bundle;
	String sDescription;
	ApplicationPreferences applicationPreferences;
	boolean fIsDirty;
	private static final String kHTMsFolder = "/resources/configuration/HTMs/";
	private String sProgramLocation;
	private String sPAWSWorkingDirectory;
	private String htmlMapperStylesheet;
	private String sCSSContent;

	private String sConfigurationDirectory;
	private String operatingSystem = System.getProperty("os.name");
	private Transformer transformerPAWSSKHtmlMapper;

	URL location;

	// following lines from
	// https://stackoverflow.com/questions/32464974/javafx-change-application-language-on-the-run
	private static final ObservableResourceFactory RESOURCE_FACTORY = ObservableResourceFactory
			.getInstance();
	static {
		RESOURCE_FACTORY.setResources(ResourceBundle.getBundle(Constants.RESOURCE_LOCATION,
				new Locale("en")));
	}

	@Override
	public void initialize(URL location, ResourceBundle resources) {
		this.location = location;
		bundle = resources;
		sFileFilterDescription = RESOURCE_FACTORY.getStringBinding("file.filterdescription").get();
		try {
			sConfigurationDirectory = new File(".").getCanonicalPath() + File.separator
					+ "resources" + File.separator + "configuration" + File.separator;
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		initToolbarButtons(bundle);

		webEngine = browser.getEngine();
		webEngine.setOnAlert(event -> showAlert(event.getData()));
		RootLayoutController rlc = this;
		webEngine.getLoadWorker().stateProperty().addListener(new ChangeListener<State>() {
			public void changed(ObservableValue ov, State oldState, State newState) {
				if (newState == State.SUCCEEDED) {
					System.out.println("succeeded: url='" + webEngine.getLocation() + "'");
					changeStatusOfBackForwardItems();
					// TODO: is there a way to associate the Java code with the
					// javascript code *before* the page is loaded?
					// We are working around it by sleeping for 10ms in the
					// javascript onload() function.
					JSObject win = (JSObject) webEngine.executeScript("window");
					win.setMember("pawsApp", new WebPageInteractor(language, webEngine, rlc));
					webEngine.executeScript("Initialize('" + getCurrentLocaleCode() + "')");
					updatePageLabels();
				} else if (newState == State.FAILED) {
					String sUrl = webEngine.getLocation();
					System.out.println("failed: url='" + sUrl + "'");
					if (sUrl.endsWith(".xml")) {
						transformAndLoadPage(sUrl);
					} else if (sUrl.endsWith("LeftOffAt")) {
						handleBack();
					} else {
						Throwable e = webEngine.getLoadWorker().getException();
						if (e != null) {
							// System.out.println("Page load failed!");
							e.printStackTrace();
						}
					}
				}
			}
		});

		initMenuItemsForLocalization();
		createContextMenu();

		try {
			sProgramLocation = Constants.FILE_PROTOCOL + "/" + new File(".").getCanonicalPath();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		sPAWSWorkingDirectory = getWorkingPageOutputDirectory();

		Platform.runLater(new Runnable() {
			@Override
			public void run() {
				browser.requestFocus();
			}
		});
	}

	private void createContextMenu() {
		browser.setContextMenuEnabled(false);
		contextMenu = new ContextMenu();
		contextMenuMakeLarger = new MenuItem();
		contextMenuMakeSmaller = new MenuItem();
		SeparatorMenuItem smi1 = new SeparatorMenuItem();
		contextMenuBack = new MenuItem();
		contextMenuForward = new MenuItem();
		SeparatorMenuItem smi2 = new SeparatorMenuItem();
		contextMenuRefresh = new MenuItem();

		contextMenuMakeLarger.textProperty().bind(
				RESOURCE_FACTORY.getStringBinding("menu.makelarger"));
		contextMenuMakeSmaller.textProperty().bind(
				RESOURCE_FACTORY.getStringBinding("menu.makesmaller"));
		contextMenuBack.textProperty().bind(RESOURCE_FACTORY.getStringBinding("menu.back"));
		contextMenuForward.textProperty().bind(RESOURCE_FACTORY.getStringBinding("menu.forward"));
		contextMenuRefresh.textProperty().bind(RESOURCE_FACTORY.getStringBinding("menu.refresh"));

		contextMenuMakeLarger.setOnAction(e -> handleMakeLarger());
		contextMenuMakeSmaller.setOnAction(e -> handleMakeSmaller());
		contextMenuBack.setOnAction(e -> handleBack());
		contextMenuForward.setOnAction(e -> handleForward());
		contextMenuRefresh.setOnAction(e -> handleRefresh());

		contextMenu.getItems().addAll(contextMenuMakeLarger, contextMenuMakeSmaller, smi1,
				contextMenuBack, contextMenuForward, smi2, contextMenuRefresh);
		browser.setOnMousePressed(e -> {
			if (e.getButton() == MouseButton.SECONDARY) {
				contextMenu.show(browser, e.getScreenX(), e.getScreenY());
			} else {
				contextMenu.hide();
			}
		});

	}

	private void initMenuItemsForLocalization() {
		menuFile.textProperty().bind(RESOURCE_FACTORY.getStringBinding("menu.file"));
		menuItemFileNew.textProperty().bind(RESOURCE_FACTORY.getStringBinding("menu.new"));
		menuItemFileOpen.textProperty().bind(RESOURCE_FACTORY.getStringBinding("menu.open"));
		menuItemFileClose.textProperty().bind(RESOURCE_FACTORY.getStringBinding("menu.close"));
		menuItemFileSaveAs.textProperty().bind(RESOURCE_FACTORY.getStringBinding("menu.saveas"));
		menuItemFileGenerateFiles.textProperty().bind(
				RESOURCE_FACTORY.getStringBinding("menu.generatefiles"));
		menuItemFileLocations.textProperty().bind(
				RESOURCE_FACTORY.getStringBinding("menu.filelocations"));
		menuItemFileExit.textProperty().bind(RESOURCE_FACTORY.getStringBinding("menu.exit"));
		menuEdit.textProperty().bind(RESOURCE_FACTORY.getStringBinding("menu.edit"));
		menuItemEditUndo.textProperty().bind(RESOURCE_FACTORY.getStringBinding("menu.undo"));
		menuItemEditRedo.textProperty().bind(RESOURCE_FACTORY.getStringBinding("menu.redo"));
		menuItemEditCut.textProperty().bind(RESOURCE_FACTORY.getStringBinding("menu.cut"));
		menuItemEditCopy.textProperty().bind(RESOURCE_FACTORY.getStringBinding("menu.copy"));
		menuItemEditPaste.textProperty().bind(RESOURCE_FACTORY.getStringBinding("menu.paste"));
		menuLanguage.textProperty().bind(RESOURCE_FACTORY.getStringBinding("menu.language"));
		menuItemLanguageProperties.textProperty().bind(
				RESOURCE_FACTORY.getStringBinding("menu.languageproperties"));
		menuItemLanguageLocations.textProperty().bind(
				RESOURCE_FACTORY.getStringBinding("menu.filelocations"));
		menuView.textProperty().bind(RESOURCE_FACTORY.getStringBinding("menu.view"));
		menuItemShowStatusBar.textProperty().bind(
				RESOURCE_FACTORY.getStringBinding("menu.showstatusbar"));
		menuItemViewMakeLarger.textProperty().bind(
				RESOURCE_FACTORY.getStringBinding("menu.makelarger"));
		menuItemViewMakeSmaller.textProperty().bind(
				RESOURCE_FACTORY.getStringBinding("menu.makesmaller"));
		menuItemViewBack.textProperty().bind(RESOURCE_FACTORY.getStringBinding("menu.back"));
		menuItemViewForward.textProperty().bind(RESOURCE_FACTORY.getStringBinding("menu.forward"));
		menuItemViewRefresh.textProperty().bind(RESOURCE_FACTORY.getStringBinding("menu.refresh"));
		menuSettings.textProperty().bind(RESOURCE_FACTORY.getStringBinding("menu.settings"));
		menuChangeInterfaceLanguage.textProperty().bind(
				RESOURCE_FACTORY.getStringBinding("menu.changeinterfacelanguage"));
		menuHelp.textProperty().bind(RESOURCE_FACTORY.getStringBinding("menu.help"));
		menuHelpResources.textProperty().bind(RESOURCE_FACTORY.getStringBinding("menu.resources"));
		menuHelpAbout.textProperty().bind(RESOURCE_FACTORY.getStringBinding("menu.about"));
	}

	private void initMapper() {
		try {
			htmlMapperStylesheet = sConfigurationDirectory + "Transforms" + File.separator
					+ "PAWSSKHtmlMapper.xsl";
			File xslt = new File(htmlMapperStylesheet);
			if (!xslt.exists()) {
				throw new IOException(xslt.getPath());
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void initCSS() {
		try {
			String cssStylesheet = sConfigurationDirectory + "Styles" + File.separator
					+ "PAWSStarterKitMaster.css";
			File css = new File(cssStylesheet);
			if (!css.exists()) {
				throw new IOException(css.getPath());
			}
			sCSSContent = new String(Files.readAllBytes(css.toPath()), StandardCharsets.UTF_8)
					+ getvernacularstyle();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private String getCurrentLocaleCode() {
		return "_" + currentLocale.getLanguage();
	}

	public void transformAndLoadPage(String sUrl) {
		try {
			int i = sUrl.lastIndexOf("/");
			String sBaseName = sUrl.substring(i + 1, sUrl.length() - 4);
			File pageToLoadFile = new File(sPAWSWorkingDirectory + File.separator + sBaseName
					+ ".htm");

			Path working = Paths.get(sPAWSWorkingDirectory);
			if (!Files.exists(working)) {
				Files.createDirectories(working);
			}
			String sLocaleCode = getCurrentLocaleCode();
			String sAdjustedUrl = sUrl.replace(Constants.FILE_PROTOCOL + "/", "")
					.replace("HTMs", "XmlPageDescriptions").replace(".xml", sLocaleCode + ".xml");

			String sInstallPath = sUrl.replace("HTMs/", "").replace(sBaseName + ".xml", "");

			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			DocumentBuilder builder = factory.newDocumentBuilder();
			Document document = builder.parse(sAdjustedUrl);

			if (transformerPAWSSKHtmlMapper == null) {
				TransformerFactory tFactory = TransformerFactory.newInstance();
				StreamSource stylesource = new StreamSource(htmlMapperStylesheet);
				System.out.println("transforming: mapper='" + htmlMapperStylesheet + "'");
				transformerPAWSSKHtmlMapper = tFactory.newTransformer(stylesource);
			}
			createTransformParameters(sInstallPath, transformerPAWSSKHtmlMapper);

			DOMSource source = new DOMSource(document);
			StreamResult result = new StreamResult(pageToLoadFile);
			transformerPAWSSKHtmlMapper.transform(source, result);

			String sPageToLoad = Constants.FILE_PROTOCOL + pageToLoadFile.toURI().getPath();
			webEngine.load(sPageToLoad);
		} catch (Exception e) {
			e.printStackTrace();
			HandleExceptionMessage.show("Transform Error", "Failed to transform", e.getMessage(),
					true);
		}
	}

	public void createTransformParameters(String sInstallPath, Transformer transformer) {
		List<XsltParameter> params = new ArrayList<XsltParameter>();
		params.add(new XsltParameter("prmInstallPath", sInstallPath));
		params.add(new XsltParameter("prmLangAbbr", language.getValue("/paws/language/langAbbr")));
		params.add(new XsltParameter("prmRtlScript", language.getValue("/paws/language/font/@rtl")));
		params.add(new XsltParameter("prmStylesheet", sCSSContent));
		String sAdjusted = sPAWSWorkingDirectory + File.separator;
		if (operatingSystem.toLowerCase().contains("windows")) {
			sAdjusted = sAdjusted.replace("\\", "\\\\");
		}
		params.add(new XsltParameter("prmWorkingPath", sAdjusted));
		params.add(new XsltParameter("prmLocale", getCurrentLocaleCode()));
		params.add(new XsltParameter("prmBackLabel", RESOURCE_FACTORY.getStringBinding(
				"webpage.back").get()));
		params.add(new XsltParameter("prmNextLabel", RESOURCE_FACTORY.getStringBinding(
				"webpage.next").get()));
		params.add(new XsltParameter("prmReturnToContentsLabel", RESOURCE_FACTORY.getStringBinding(
				"webpage.returntocontents").get()));
		params.add(new XsltParameter("prmTypeOfFeature", RESOURCE_FACTORY.getStringBinding(
				"webpage.typeoffeature").get()));
		params.add(new XsltParameter("prmFeature", RESOURCE_FACTORY.getStringBinding(
				"webpage.feature").get()));
		params.add(new XsltParameter("prmExplanation", RESOURCE_FACTORY.getStringBinding(
				"webpage.explanation").get()));
		params.add(new XsltParameter("prmMorphemes", RESOURCE_FACTORY.getStringBinding(
				"webpage.morphemes").get()));
		params.add(new XsltParameter("prmOutputGrammar", language.getValue("/paws/@outputGrammar")));
		transformer.clearParameters();
		for (XsltParameter param : params) {
			transformer.setParameter(param.name, param.value);
		}
	}

	private void updatePageLabels() {
		labelPageDescription.setText(webEngine.getTitle());
		String sCount = "";
		Document doc = webEngine.getDocument();
		if (doc != null) {
			Node node = doc.getFirstChild();
			if (node != null) {
				node = node.getNextSibling();
				if (node != null) {
					sCount = node.getTextContent().replace("PageCount=\"", "").replace("\"", "");
				}
			}
		}
		labelPageCount.setText(sCount);
	}

	private String getvernacularstyle() {
		StringBuilder sb = new StringBuilder();
		sb.append(".vernacular {");
		sb.append("font-family: ");
		sb.append(language.getValue("//language/font/fontName"));
		sb.append(";");
		sb.append("font-size: ");
		sb.append(language.getValue("//language/font/fontSize"));
		sb.append("pt;");
		sb.append("color: ");
		sb.append(language.getValue("//language/font/fontColor"));
		sb.append(";");
		if ("True" == language.getValue("//language/font/@bold"))
			sb.append("font-weight: bold;");
		if ("True" == language.getValue("//language/font/@italic"))
			sb.append("font-style: italic;");
		boolean bFontUnderline = ("True" == language.getValue("//language/font/@under"));
		boolean bFontStrikeout = ("True" == language.getValue("//language/font/@strike"));
		if (bFontUnderline || bFontStrikeout) {
			sb.append("text-decoration: ");
			if (bFontUnderline)
				sb.append("underline ");
			if (bFontStrikeout)
				sb.append("line-through");
			sb.append(";");
		}
		sb.append("}");
		return sb.toString();
	}

	public String getAppDataDirectory() {
		if (operatingSystem.toLowerCase().contains("windows")) {
			return System.getenv("APPDATA");
		} else {
			return System.getProperty("user.home");
		}
	}

	public String getWorkingDirectory() {
		String appDir = getAppDataDirectory();
		String configDir = "paws";
		if (!operatingSystem.toLowerCase().contains("windows")) {
			configDir = ".paws";
		}
		String sResult = appDir + File.separator + configDir + File.separator;
		return sResult;
	}

	public String getWorkingConfigurationDirectory() {
		String sResult = getWorkingDirectory() + "configuration";
		return sResult;
	}

	public String getWorkingPageOutputDirectory() {
		String langAbbr = "Z1Z2Z3";
		if (language != null) {
			langAbbr = language.getValue("/paws/language/langAbbr");
		}
		String sResult = getWorkingDirectory() + langAbbr;
		return sResult;
	}

	private void changeStatusOfBackForwardItems() {
		final WebHistory history = webEngine.getHistory();
		if (canGoForward(history)) {
			buttonToolbarForward.setDisable(false);
			menuItemViewForward.setDisable(false);
			contextMenuForward.setDisable(false);
		} else {
			buttonToolbarForward.setDisable(true);
			menuItemViewForward.setDisable(true);
			contextMenuForward.setDisable(true);
		}
		if (canGoBack(history)) {
			buttonToolbarBack.setDisable(false);
			menuItemViewBack.setDisable(false);
			contextMenuBack.setDisable(false);
		} else {
			buttonToolbarBack.setDisable(true);
			menuItemViewBack.setDisable(true);
			contextMenuBack.setDisable(true);
		}
	}

	protected void initToolbarButtons(ResourceBundle bundle) {
		tooltipToolbarFileNew = ControllerUtilities.createToolbarButtonWithImage("newAction.png",
				buttonToolbarFileNew, tooltipToolbarFileNew, bundle.getString("tooltip.new"));
		tooltipToolbarFileNew.textProperty().bind(RESOURCE_FACTORY.getStringBinding("tooltip.new"));
		tooltipToolbarFileOpen = ControllerUtilities.createToolbarButtonWithImage("openAction.png",
				buttonToolbarFileOpen, tooltipToolbarFileOpen, bundle.getString("tooltip.open"));
		tooltipToolbarFileOpen.textProperty().bind(
				RESOURCE_FACTORY.getStringBinding("tooltip.open"));
		tooltipToolbarGenerateFiles = ControllerUtilities.createToolbarButtonWithImage(
				"saveAction.png", buttonToolbarGenerateFiles, tooltipToolbarGenerateFiles,
				bundle.getString("tooltip.save"));
		tooltipToolbarGenerateFiles.textProperty().bind(
				RESOURCE_FACTORY.getStringBinding("tooltip.save"));
		tooltipToolbarEditCut = ControllerUtilities.createToolbarButtonWithImage("cutAction.png",
				buttonToolbarEditCut, tooltipToolbarEditCut, bundle.getString("tooltip.cut"));
		tooltipToolbarEditCut.textProperty().bind(RESOURCE_FACTORY.getStringBinding("tooltip.cut"));
		tooltipToolbarEditCopy = ControllerUtilities.createToolbarButtonWithImage("copyAction.png",
				buttonToolbarEditCopy, tooltipToolbarEditCopy, bundle.getString("tooltip.copy"));
		tooltipToolbarEditCopy.textProperty().bind(
				RESOURCE_FACTORY.getStringBinding("tooltip.copy"));
		tooltipToolbarEditPaste = ControllerUtilities.createToolbarButtonWithImage(
				"pasteAction.png", buttonToolbarEditPaste, tooltipToolbarEditPaste,
				bundle.getString("tooltip.paste"));
		tooltipToolbarEditPaste.textProperty().bind(
				RESOURCE_FACTORY.getStringBinding("tooltip.paste"));
		tooltipToolbarBack = ControllerUtilities.createToolbarButtonWithImage("back.png",
				buttonToolbarBack, tooltipToolbarBack, bundle.getString("tooltip.back"));
		tooltipToolbarBack.textProperty().bind(RESOURCE_FACTORY.getStringBinding("tooltip.back"));
		tooltipToolbarForward = ControllerUtilities.createToolbarButtonWithImage("forward.png",
				buttonToolbarForward, tooltipToolbarForward, bundle.getString("tooltip.forward"));
		tooltipToolbarForward.textProperty().bind(
				RESOURCE_FACTORY.getStringBinding("tooltip.forward"));
		tooltipToolbarRefresh = ControllerUtilities.createToolbarButtonWithImage("refresh.png",
				buttonToolbarRefresh, tooltipToolbarRefresh, bundle.getString("tooltip.refresh"));
		tooltipToolbarRefresh.textProperty().bind(
				RESOURCE_FACTORY.getStringBinding("tooltip.refresh"));
	}

	private void showAlert(String message) {
		Dialog<Void> alert = new Dialog<>();
		alert.getDialogPane().setContentText(message);
		alert.getDialogPane().getButtonTypes().add(ButtonType.OK);
		alert.showAndWait();
	}

	public MainApp getMainApp() {
		return mainApp;
	}

	/**
	 * Is called by the main application to give a reference back to itself.
	 * 
	 * @param mainApp
	 */
	public void setMainApp(MainApp mainApp) {
		this.mainApp = mainApp;
		this.applicationPreferences = mainApp.getApplicationPreferences();
		menuItemShowStatusBar.setSelected(applicationPreferences.getShowStatusBar());
		handleMenuShowStatusBar();
	}

	public void setLocale(Locale currentLocale) {
		this.currentLocale = currentLocale;
		pawsFilterDescription = sFileFilterDescription + " (" + Constants.PAWS_DATA_FILE_EXTENSIONS
				+ ")";
		RESOURCE_FACTORY.setResources(ResourceBundle.getBundle(Constants.RESOURCE_LOCATION,
				currentLocale));
	}

	@FXML
	public void handleNewLanguage() {
		if (fIsDirty) {
			askAboutSaving();
		}
		String sDirectoryPath = applicationPreferences.getLastOpenedDirectoryPath();
		if (sDirectoryPath == "") {
			// probably creating a new file the first time the program is run;
			// set the directory to the closest we can to a reasonable default
			sDirectoryPath = tryToGetDefaultDirectoryPath();
		}
		applicationPreferences.setLastOpenedDirectoryPath(sDirectoryPath);
		File fileCreated = ControllerUtilities.doFileSaveAs(mainApp, currentLocale, false,
				pawsFilterDescription, RESOURCE_FACTORY.getStringBinding("file.new").get());
		if (fileCreated != null) {
			try {
				String masterPAWS = sConfigurationDirectory + File.separator + "Data"
						+ File.separator + "PAWSStarterKitMaster.paw";
				Files.copy(Paths.get(masterPAWS), Paths.get(fileCreated.getAbsolutePath()),
						StandardCopyOption.REPLACE_EXISTING);
				mainApp.loadLanguageData(fileCreated);
				language = mainApp.getBackEndProvider().getLanguage();
				OutputGenerator.getInstance(language);
				handleRefresh();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			language = null;
		}
	}

	protected String tryToGetDefaultDirectoryPath() {
		String sDirectoryPath = System.getProperty("user.home") + File.separator;
		File dir = new File(sDirectoryPath);
		if (dir.exists()) {
			// See if there is a "Documents" directory as Windows, Linux, and
			// Mac OS X tend to have
			String sDocumentsDirectoryPath = sDirectoryPath + "Documents" + File.separator;
			dir = new File(sDocumentsDirectoryPath);
			if (dir.exists()) {
				// Try and find or make the "My PAWS" subdirectory of
				// Documents
				String sMyPAWSDirectoryPath = sDocumentsDirectoryPath
						+ Constants.DEFAULT_DIRECTORY_NAME + File.separator;
				dir = new File(sMyPAWSDirectoryPath);
				if (dir.exists()) {
					sDirectoryPath = sMyPAWSDirectoryPath;
				} else {
					boolean success = (dir.mkdir());
					if (success) {
						sDirectoryPath = sMyPAWSDirectoryPath;
					} else {
						sDirectoryPath = sDocumentsDirectoryPath;
					}
				}
			}
		} else { // give up; let user set it
			sDirectoryPath = "";
		}
		return sDirectoryPath;
	}

	@FXML
	private void handleOpenLanguage() {
		if (fIsDirty) {
			askAboutSaving();
		}
		doFileOpen(false);
		language = mainApp.getAnswers();
		OutputGenerator.getInstance(language);
		browser.requestFocus();
	}

	public void doFileOpen(Boolean fCloseIfCanceled) {
		File file = ControllerUtilities.getFileToOpen(mainApp, pawsFilterDescription,
				Constants.PAWS_DATA_FILE_EXTENSIONS);
		if (file != null) {
			mainApp.loadLanguageData(file);
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
	public void handleSaveLanguage() {
		File file = mainApp.getLanguageFile();
		if (file != null) {
			mainApp.saveLanguageFile(file);
			markAsClean();
		} else {
			handleSaveAs();
		}

	}

	@FXML
	public void handleGenerateFiles() {
		if (!menuItemShowStatusBar.isSelected()) {
			mainPane.setBottom(statusBar);
		}
		progressBarGenerateFiles.setVisible(true);
		mainPane.cursorProperty().set(Cursor.WAIT);
		browser.setDisable(true);
		topVBox.setDisable(true);
		Task<Void> taskGenerateFiles = new Task<Void>() {
			@Override
			protected Void call() throws Exception {
				updateProgress(0, Constants.OUTPUT_TRANSFORM_COUNT);
				OutputGenerator generator = OutputGenerator.getInstance(language);
				generator.setConfigurationDirectory(sConfigurationDirectory);
				generator.setupTransformInitialization();
				generator.setupOutputFileGeneration(mainApp.getLanguageFile());
				updateProgress(1, Constants.OUTPUT_TRANSFORM_COUNT);

				String sResult = language.getValue("/paws/@outputGrammar");
				if (sResult.equals("True")) {
					generator.initMasterGrammarMapperTransform();
					updateProgress(2, Constants.OUTPUT_TRANSFORM_COUNT);
					generator.generateGrammarOutputFile();
					updateProgress(3, Constants.OUTPUT_TRANSFORM_COUNT);
					generator.initParameterizedExampleTransform();
					updateProgress(4, Constants.OUTPUT_TRANSFORM_COUNT);
					generator.generateParameterizedExamplesOutputFiles();
				}
				updateProgress(5, Constants.OUTPUT_TRANSFORM_COUNT);
				sResult = language.getValue("/paws/@outputWriterPractical");
				if (sResult.equals("True")) {
					generator.initMasterWriterPracticalMapperTransform();
					updateProgress(6, Constants.OUTPUT_TRANSFORM_COUNT);
					initXLingPaperTransforms(generator);
					updateProgress(7, Constants.OUTPUT_TRANSFORM_COUNT);
					updateProgress(8, Constants.OUTPUT_TRANSFORM_COUNT);
					generator.generateWriterPracticalOutputFile();
				}
				updateProgress(9, Constants.OUTPUT_TRANSFORM_COUNT);
				sResult = language.getValue("/paws/@outputWriterPracticalFrench");
				if (sResult.equals("True")) {
					generator.initMasterWriterPracticalFrenchMapperTransform();
					updateProgress(10, Constants.OUTPUT_TRANSFORM_COUNT);
					initXLingPaperTransforms(generator);
					updateProgress(11, Constants.OUTPUT_TRANSFORM_COUNT);
					updateProgress(12, Constants.OUTPUT_TRANSFORM_COUNT);
					generator.generateWriterPracticalFrenchOutputFile();
				}
				updateProgress(13, Constants.OUTPUT_TRANSFORM_COUNT);
				sResult = language.getValue("/paws/@outputWriterPracticalSpanish");
				if (sResult.equals("True")) {
					generator.initMasterWriterPracticalSpanishMapperTransform();
					updateProgress(14, Constants.OUTPUT_TRANSFORM_COUNT);
					initXLingPaperTransforms(generator);
					updateProgress(15, Constants.OUTPUT_TRANSFORM_COUNT);
					updateProgress(16, Constants.OUTPUT_TRANSFORM_COUNT);
					generator.generateWriterPracticalSpanishOutputFile();
				}
				updateProgress(17, Constants.OUTPUT_TRANSFORM_COUNT);

				return null;
			}

			private void initXLingPaperTransforms(OutputGenerator generator) {
				generator.initXLingPaperTransform1();
				generator.initXLingPaperTransform2();
			}
		};
		progressBarGenerateFiles.progressProperty().bind(taskGenerateFiles.progressProperty());
		Thread threadGenerateFiles = new Thread(taskGenerateFiles);
		threadGenerateFiles.start();
		taskGenerateFiles.setOnSucceeded(event -> {
			browser.setDisable(false);
			topVBox.setDisable(false);
			mainPane.cursorProperty().set(Cursor.DEFAULT);
			progressBarGenerateFiles.setVisible(false);
			if (!menuItemShowStatusBar.isSelected()) {
				mainPane.setBottom(null);
			}
		});
	}

	@FXML
	private void handleSaveAs() {
	}

	@FXML
	private void handleFileLocations() {
		webEngine.load(sProgramLocation + kHTMsFolder + "PAWSFiles" + getCurrentLocaleCode()
				+ ".htm");
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
	private void handleMakeLarger() {
		browser.setZoom(browser.getZoom() + 0.125);
	}

	@FXML
	private void handleMakeSmaller() {
		browser.setZoom(browser.getZoom() - 0.125);
	}

	@FXML
	private void handleMenuShowStatusBar() {
		boolean isVisible = menuItemShowStatusBar.isSelected();
		applicationPreferences.setShowStatusBar(isVisible);
		if (isVisible) {
			mainPane.setBottom(statusBar);
		} else {
			mainPane.setBottom(null);
		}
	}

	/**
	 * Change interface language.
	 */
	@FXML
	private void handleChangeInterfaceLanguage() {
		ValidLocaleCollector collector = new ValidLocaleCollector(currentLocale);
		collector.collectValidLocales();
		Map<String, ResourceBundle> validLocales = collector.getValidLocales();
		ChoiceDialog<String> dialog = new ChoiceDialog<>(
				currentLocale.getDisplayLanguage(currentLocale), validLocales.keySet());
		dialog.setTitle(RESOURCE_FACTORY.getStringBinding("dialog.changeinterfacelanguage").get());
		dialog.setHeaderText(RESOURCE_FACTORY.getStringBinding("dialog.chooseinterfacelanguage")
				.get());
		dialog.setContentText(RESOURCE_FACTORY.getStringBinding("dialog.chooselanguage").get());
		Optional<String> result = dialog.showAndWait();
		result.ifPresent(locale -> {
			Locale selectedLocale = validLocales.get(locale).getLocale();
			bundle = validLocales.get(locale);
			if (!currentLocale.equals(selectedLocale)) {
				mainApp.setLocale(selectedLocale);
				RESOURCE_FACTORY.setResources(ResourceBundle.getBundle(Constants.RESOURCE_LOCATION,
						selectedLocale));
				// TODO: figure out if XML or HTM and adjust accordingly
				String currentWebPage = webEngine.getLocation();
				if (currentWebPage.contains(kHTMsFolder)) {
					// the page is a true htm file
					currentWebPage = currentWebPage.replace(getCurrentLocaleCode(), "_"
							+ selectedLocale.getLanguage());
				} else {
					// the page is an xml page
					int i = currentWebPage.lastIndexOf("/");
					String sBaseName = currentWebPage.substring(i + 1, currentWebPage.length() - 4);
					currentWebPage = Constants.FILE_PROTOCOL + "/"
							+ sConfigurationDirectory.replace("\\", "/") + "HTMs/" + sBaseName
							+ ".xml";
					System.out.println("change: current='" + currentWebPage + "'");
				}
				currentLocale = selectedLocale;
				webEngine.load(currentWebPage);
			}
		});
	}

	public void askAboutSaving() {
		Alert alert = new Alert(AlertType.CONFIRMATION, "", ButtonType.YES, ButtonType.NO);
		alert.setTitle(MainApp.kApplicationTitle);
		alert.setHeaderText(RESOURCE_FACTORY.getStringBinding("file.asktosaveheader").get());
		alert.setContentText(RESOURCE_FACTORY.getStringBinding("file.asktosavecontent").get());

		Stage stage = (Stage) alert.getDialogPane().getScene().getWindow();
		stage.getIcons().add(mainApp.getNewMainIconImage());

		Optional<ButtonType> result = alert.showAndWait();
		if (result.get() == ButtonType.YES) {
			handleSaveLanguage();
		}
	}

	@FXML
	public void handleBack() {
		final WebHistory history = webEngine.getHistory();
		if (canGoBack(history)) {
			Platform.runLater(new Runnable() {
				public void run() {
					history.go(-1);
				}
			});
		}
	}

	private boolean canGoBack(WebHistory history) {
		ObservableList<WebHistory.Entry> entryList = history.getEntries();
		int currentIndex = history.getCurrentIndex();
		if (entryList.size() > 1 && currentIndex > 0) {
			return true;
		}
		return false;
	}

	@FXML
	private void handleForward() {
		final WebHistory history = webEngine.getHistory();
		if (canGoForward(history)) {
			Platform.runLater(new Runnable() {
				public void run() {
					history.go(1);
				}
			});
		}
	}

	private boolean canGoForward(WebHistory history) {
		ObservableList<WebHistory.Entry> entryList = history.getEntries();
		int currentIndex = history.getCurrentIndex();
		if (entryList.size() > 1 && currentIndex < entryList.size() - 1) {
			return true;
		}
		return false;
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
		// webEngine.load(sProgramLocation + kHTMsFolder + "About.htm");
		sAboutHeader = RESOURCE_FACTORY.getStringBinding("about.header").get();
		Object[] args = { Constants.VERSION_NUMBER };
		MessageFormat msgFormatter = new MessageFormat("", currentLocale);
		msgFormatter.applyPattern(RESOURCE_FACTORY.getStringBinding("about.content").get());
		sAboutContent = msgFormatter.format(args);
		Alert alert = new Alert(AlertType.INFORMATION);
		alert.setTitle(sAboutHeader);
		alert.setHeaderText(null);
		alert.setContentText(sAboutContent);
		Image silLogo = ControllerUtilities
				.getIconImageFromURL("file:resources/images/SILLogo.png");
		alert.setGraphic(new ImageView(silLogo));
		Stage stage = (Stage) alert.getDialogPane().getScene().getWindow();
		stage.getIcons().add(mainApp.getNewMainIconImage());
		alert.showAndWait();
	}

	@FXML
	private void handleResources() {
		webEngine.load(sProgramLocation + kHTMsFolder + "Resources" + getCurrentLocaleCode()
				+ ".htm");
	}

	@FXML
	private void handleLanguage() {
		webEngine.load(sProgramLocation + kHTMsFolder + "LanguageProperties"
				+ getCurrentLocaleCode() + ".htm");
	}

	/**
	 * Closes the application.
	 */
	@FXML
	private void handleExit() {
		if (fIsDirty) {
			askAboutSaving();
		}
		System.exit(0);
	}

	public FontInfo showFontInfo(FontInfo fontInfo) {
		// TODO: improve the font selector dialog so that one can type the font
		// family name
		// Can we improve the color picker to use color names, too?
		FontSelectorDialogWithColor dlg = new FontSelectorDialogWithColor(fontInfo.getFont(),
				fontInfo.getColor(), bundle);
		dlg.initOwner(mainApp.getPrimaryStage());
		dlg.showAndWait();
		Font chosenFont = dlg.getResult();
		if (chosenFont != null) {
			fontInfo.setFont(chosenFont);
			Color color = dlg.getColor();
			fontInfo.setColor(color);
			markAsDirty();
		}
		return fontInfo;
	}

	public void showLanguageLastPage() {
		// Make sure we have the correct working directory
		sPAWSWorkingDirectory = getWorkingPageOutputDirectory();
		initMapper();
		initCSS();
		String lastPage = language.getValue("/paws/leftOffAt");
		try {
			if (StringUtilities.isNullOrEmpty(lastPage)) {
				// load contents page
				webEngine.load(sProgramLocation + kHTMsFolder + "Contents.htm");
			} else if (Files.exists(Paths.get(lastPage))) {
				// load the language-specific page
				URL url = new File(lastPage).toURI().toURL();
				webEngine.load(url.toString());
			} else {
				// load the standard page
				// TODO: what if it doesn't exist?
				String sPageToLoad = sProgramLocation + kHTMsFolder + lastPage;
				webEngine.load(sPageToLoad);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// We add 500 ms wait and do a refresh because for some reason the
		// WebPageInteractor is not seen otherwise
		Platform.runLater(new Runnable() {
			@Override
			public void run() {
				Timeline timeline = new Timeline(new KeyFrame(Duration.millis(500), event -> {
					handleRefresh();
				}));
				timeline.play();
			}
		});
	}

	public Language getLanguage() {
		return language;
	}

	public void setLanguage(Language language) {
		this.language = language;
	}

	public ResourceBundle getBundle() {
		return bundle;
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