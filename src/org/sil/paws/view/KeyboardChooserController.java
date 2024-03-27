// Copyright (c) 2024 SIL International 
// This software is licensed under the LGPL, version 2.1 or later 
// (http://www.gnu.org/licenses/lgpl-2.1.html) 
/**
 * 
 */
package org.sil.paws.view;

import java.net.URL;
import java.util.Locale;
import java.util.ResourceBundle;

import org.sil.paws.model.Language;
import org.sil.utility.service.keyboards.KeyboardChanger;
import org.sil.utility.service.keyboards.KeyboardInfo;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Label;
import javafx.scene.text.Text;
import javafx.stage.Stage;
import javafx.util.StringConverter;

/**
 * @author Andy Black
 *
 */
public class KeyboardChooserController implements Initializable {

	@FXML
	private Label prompt;
	@FXML
	private ComboBox<KeyboardInfo> vernacular = new ComboBox<KeyboardInfo>();
	@FXML
	private ComboBox<KeyboardInfo> freeGloss = new ComboBox<KeyboardInfo>();
	@FXML
	private ComboBox<KeyboardInfo> ipa = new ComboBox<KeyboardInfo>();

	private KeyboardInfo vernacularKeyboardInfo = new KeyboardInfo(new Locale("en"), "English"); 
	private KeyboardInfo freeGlossKeyboardInfo = new KeyboardInfo(new Locale("en"), "English"); 
	private KeyboardInfo ipaKeyboardInfo = new KeyboardInfo(new Locale("en"), "English"); 
	private Text keyboardText = new Text();
	
	Stage dialogStage;
	private boolean okClicked = false;
	private Language language;
	KeyboardChanger keyboardChanger;

	public KeyboardInfo getVernacularKeyboardInfo() {
		return vernacularKeyboardInfo;
	}

	public void setVernacularKeyboardInfo(KeyboardInfo vernacularKeyboardInfo) {
		this.vernacularKeyboardInfo = vernacularKeyboardInfo;
	}

	public KeyboardInfo getFreeGlossKeyboardInfo() {
		return freeGlossKeyboardInfo;
	}

	public void setFreeGlossKeyboardInfo(KeyboardInfo freeGlossKeyboardInfo) {
		this.freeGlossKeyboardInfo = freeGlossKeyboardInfo;
	}

	public KeyboardInfo getIpaKeyboardInfo() {
		return ipaKeyboardInfo;
	}

	public void setIpaKeyboardInfo(KeyboardInfo ipaKeyboardInfo) {
		this.ipaKeyboardInfo = ipaKeyboardInfo;
	}

	/**
	 * Initializes the controller class. This method is automatically called
	 * after the fxml file has been loaded.
	 */
	public void initialize(URL location, ResourceBundle resources) {
		keyboardChanger = KeyboardChanger.getInstance();
		keyboardChanger.initKeyboardHandler();
		
		ObservableList<KeyboardInfo> activeKeyboards = FXCollections
				.observableArrayList(keyboardChanger.getActiveKeyboards());
		vernacular.setItems(activeKeyboards);
		vernacular.setConverter(new StringConverter<KeyboardInfo>() {
			@Override
			public String toString(KeyboardInfo object) { 
				return object.getDescription();
			}
			@Override
			public KeyboardInfo fromString(String string) {
				return null;
			}
		});
		vernacular.valueProperty().addListener((observable, oldValue, newValue) -> {			
			keyboardText.setText(newValue.getDescription());
			vernacularKeyboardInfo = newValue;
		});

		freeGloss.setItems(activeKeyboards);
		freeGloss.setConverter(new StringConverter<KeyboardInfo>() {
			@Override
			public String toString(KeyboardInfo object) { 
				return object.getDescription();
			}
			@Override
			public KeyboardInfo fromString(String string) {
				return null;
			}
		});
		freeGloss.valueProperty().addListener((observable, oldValue, newValue) -> {			
			keyboardText.setText(newValue.getDescription());
			freeGlossKeyboardInfo = newValue;
		});

		ipa.setItems(activeKeyboards);
		ipa.setConverter(new StringConverter<KeyboardInfo>() {
			@Override
			public String toString(KeyboardInfo object) { 
				return object.getDescription();
			}
			@Override
			public KeyboardInfo fromString(String string) {
				return null;
			}
		});
		ipa.valueProperty().addListener((observable, oldValue, newValue) -> {			
			keyboardText.setText(newValue.getDescription());
			ipaKeyboardInfo = newValue;
		});
	}

	/**
	 * Sets the stage of this dialog.
	 * 
	 * @param dialogStage
	 */
	public void setDialogStage(Stage dialogStage) {
		this.dialogStage = dialogStage;
	}

	public void setData(Language lang) {
		this.language = lang;
		vernacularKeyboardInfo = lang.getVernacularKeyboard();
		vernacular.setValue(vernacularKeyboardInfo);
		freeGlossKeyboardInfo = lang.getFreeGlossKeyboard();
		freeGloss.setValue(freeGlossKeyboardInfo);
		ipaKeyboardInfo = lang.getIpaKeyboard();
		ipa.setValue(ipaKeyboardInfo);
	}

	/**
	 * Returns true if the user clicked OK, false otherwise.
	 * 
	 * @return
	 */
	public boolean isOkClicked() {
		return okClicked;
	}

	/**
	 * Called when the user clicks OK.
	 */
	@FXML
	private void handleOk() {
		language.setVernacularKeyboard(vernacularKeyboardInfo);
		language.setFreeGlossKeyboard(freeGlossKeyboardInfo);
		language.setIpaKeyboard(ipaKeyboardInfo);
		okClicked = true;
		dialogStage.close();
	}

	/**
	 * Called when the user clicks cancel.
	 */
	@FXML
	private void handleCancel() {
		dialogStage.close();
	}
}
