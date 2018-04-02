// Copyright (c) 2016 SIL International 
// This software is licensed under the LGPL, version 2.1 or later 
// (http://www.gnu.org/licenses/lgpl-2.1.html) 
/**
 * 
 */

package org.sil.paws.model;

import javax.xml.bind.annotation.*;

import org.controlsfx.dialog.FontSelectorDialog;
import org.sil.utility.StringUtilities;

import javafx.event.Event;
import javafx.event.EventHandler;
import javafx.scene.control.ColorPicker;
import javafx.scene.paint.Color;
import javafx.scene.paint.Paint;
import javafx.scene.text.Font;
import javafx.scene.text.FontPosture;
import javafx.scene.text.FontWeight;
import javafx.stage.Stage;

/**
 * @author Andy Black
 *
 */
public class FontInfo {

	private Font font;
	private String fontFamily;
	private double fontSize;
	private String fontType;
	private Color color;

	/**
	 * @return the font
	 */
	//@XmlTransient
	public Font getFont() {
		return font;
	}

	/**
	 * @param font
	 *            the font to set
	 */
	@XmlTransient
	public void setFont(Font font) {
		this.font = font;
		fontFamily = font.getFamily();
		fontSize = font.getSize();
		fontType = font.getStyle();
	}

	/**
	 * @return the fontFamily
	 */
	public String getFontFamily() {
		return fontFamily;
	}

	/**
	 * @param fontFamily
	 *            the fontFamily to set
	 */
	public void setFontFamily(String fontFamily) {
		this.font = createFont(fontFamily, this.fontSize, this.fontType);
	}

	/**
	 * @return the fontSize
	 */
	public double getFontSize() {
		return fontSize;
	}

	/**
	 * @param fontSize
	 *            the fontSize to set
	 */
	public void setFontSize(double fontSize) {
		this.font = createFont(this.fontFamily, fontSize, this.fontType);
	}

	/**
	 * @return the fontType
	 */
	public String getFontType() {
		return fontType;
	}

	/**
	 * @param fontType
	 *            the fontType to set
	 */
	public void setFontType(String fontType) {
		this.font = createFont(this.fontFamily, this.fontSize, fontType);
	}

	public Color getColor() {
		return color;
	}

	public void setColor(Color color) {
		this.color = color;
	}

	public FontInfo(String fontFamily, double fontSize, String fontType) {
		super();
		this.fontFamily = fontFamily;
		this.fontSize = fontSize;
		this.fontType = fontType;
		font = createFont(fontFamily, fontSize, fontType);
	}

	public FontInfo(Font font) {
		super();
		this.font = font;
		this.fontFamily = font.getFamily();
		this.fontSize = font.getSize();
		this.fontType = font.getStyle();
	}

	public FontInfo() {
		fontFamily = "System";
		fontSize = 12.0;
		fontType = "Regular";
		font = createFont(fontFamily, fontSize, fontType);
	}

	public Font createFont(String fontFamily, double fontSize, String fontType) {
		String[] types = fontType.split(" ");
		FontWeight weight = FontWeight.NORMAL;
		FontPosture posture = FontPosture.REGULAR;
		for (String value : types) {
			switch (value) {
			case "Bold":
				weight = FontWeight.BOLD;
				break;

			case "Italic":
				posture = FontPosture.ITALIC;
				break;

			default:
				break;
			}
		}
		this.fontFamily = fontFamily;
		this.fontSize = fontSize;
		this.fontType = fontType;
		return Font.font(fontFamily, weight, posture, fontSize);
	}

	public String getCss() {
		StringBuilder sb = new StringBuilder();
		sb.append("-fx-font-family: \"");
		sb.append(getFontFamily());
		sb.append("\";\n-fx-font-size: ");
		sb.append(getFontSize());
		sb.append("pt;\n");
		String sType = getFontType();
		if (sType.contains("Italic")) {
			sb.append("-fx-font-style: italic;\n");
		}
		if (sType.contains("Bold")) {
			sb.append("-fx-font-weight: bold;\n");
		}
		sb.append("-fx-fill: ");
		sb.append(StringUtilities.toRGBCode(getColor()));
		sb.append(";\n");
		return(sb.toString());
	}
}
