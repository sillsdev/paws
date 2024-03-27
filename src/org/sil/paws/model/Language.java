/**
 * Copyright (c) 2016-2024 SIL International
 * This software is licensed under the LGPL, version 2.1 or later
 * (http://www.gnu.org/licenses/lgpl-2.1.html)
 */
package org.sil.paws.model;

import java.util.Locale;

import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;

import org.sil.utility.service.keyboards.KeyboardInfo;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

/**
 * @author Andy Black
 *
 */
// N.B.: This is in the org.sil.paws.model package, but because there are at
// least 1640 distinct objects in the PAWS answer file (not to mention the
// large number of attributes/properties each object has), we use an XML DOM.
// The amount of work required to model this in a correct MVC approach is not
// worth the effort.
public class Language {

	Document answersDOM;
	KeyboardInfo vernacularKeyboard;
	KeyboardInfo freeGlossKeyboard;
	KeyboardInfo ipaKeyboard;
	static final String ksVernacularKeyboard = "//language/keyboard/";
	static final String ksFreeGlossKeyboard = "//language/freeGlossKeyboard/";
	static final String ksIpaKeyboard = "//language/ipaKeyboard/";

	public Language() {
		super(); 
	}

	public Language(Document answersDOM) {
		super();
		this.answersDOM = answersDOM;
		initializeKeyboards();
	}

	public Document getAnswersDOM() {
		return answersDOM;
	}

	public void setAnswersDOM(Document answersDOM) {
		this.answersDOM = answersDOM;
	}
	
	public String iso639Code() {
		String code = getValue("/paws/language/langAbbr");
		return code;
	}
	
	public KeyboardInfo getVernacularKeyboard() {
		return vernacularKeyboard;
	}

	public void setVernacularKeyboard(KeyboardInfo vernacularKeyboard) {
		this.vernacularKeyboard = vernacularKeyboard;
		setKeyboardValues(ksVernacularKeyboard, vernacularKeyboard);
	}

	public KeyboardInfo getFreeGlossKeyboard() {
		return freeGlossKeyboard;
	}

	public void setFreeGlossKeyboard(KeyboardInfo freeGlossKeyboard) {
		this.freeGlossKeyboard = freeGlossKeyboard;
		setKeyboardValues(ksFreeGlossKeyboard, freeGlossKeyboard);
	}

	public KeyboardInfo getIpaKeyboard() {
		return ipaKeyboard;
	}

	public void setIpaKeyboard(KeyboardInfo ipaKeyboard) {
		this.ipaKeyboard = ipaKeyboard;
		setKeyboardValues(ksIpaKeyboard, ipaKeyboard);
	}

	private void setKeyboardValues(String sPath, KeyboardInfo keyboardInfo) {
		setValue(sPath + "description", keyboardInfo.getDescription());
		setValue(sPath + "SLocale", keyboardInfo.getSLocale());
		int id = keyboardInfo.getWindowsLangID();
		setValue(sPath + "windowsLangID", Integer.toString(id));
	}

	public void initializeKeyboards() {
		vernacularKeyboard = createKeyboardInfoOfKeyboard(ksVernacularKeyboard);
		freeGlossKeyboard = createKeyboardInfoOfKeyboard(ksFreeGlossKeyboard);
		ipaKeyboard = createKeyboardInfoOfKeyboard(ksIpaKeyboard);
	}

	private final KeyboardInfo createKeyboardInfoOfKeyboard(String sKeyboardPath) {
		String ksKeyboardDescription = sKeyboardPath + "description";
		String ksKeyboardLocale = sKeyboardPath + "SLocale";
		String ksKeyboardWindowsLangID = sKeyboardPath + "windowsLangID";
		String sKeyboardDescription = getValue(ksKeyboardDescription);
		String sKeyboardLocale = getValue(ksKeyboardLocale);
		String sKeyboardWindowsLangID = getValue(ksKeyboardWindowsLangID);
		Locale locale = new Locale(sKeyboardLocale);
		if (sKeyboardWindowsLangID.equals("")) {
			sKeyboardWindowsLangID = "0";
		}
		KeyboardInfo keyboardInfo = new KeyboardInfo(locale, sKeyboardDescription, Integer.parseInt(sKeyboardWindowsLangID));
		return keyboardInfo;
	}

	public int getFormsLength(String XPath) {
		int result = 1;
		XPathFactory xPathfactory = XPathFactory.newInstance();
		XPath xpath = xPathfactory.newXPath();
		try {
			XPathExpression expr = xpath.compile(XPath);
			Node node = (Node) expr.evaluate(answersDOM, XPathConstants.NODE);
			if (node != null) {
				int iCount = 0;
				for (int i = 0; i < node.getChildNodes().getLength(); i++) {
					Node n = node.getChildNodes().item(i);
					if (n.getNodeName().equals("form")) {
						iCount++;
					}
				}
				result = iCount;
			} else {
				System.out.println("\tnode is null");
			}
		} catch (XPathExpressionException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	public String getValue(String XPath) {
		String sResult = "";
		XPathFactory xPathfactory = XPathFactory.newInstance();
		XPath xpath = xPathfactory.newXPath();
		try {
			XPathExpression expr = xpath.compile(XPath);
			sResult = (String) expr.evaluate(answersDOM, XPathConstants.STRING);
		} catch (XPathExpressionException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return sResult;
	}

	public String setValue(String XPath, String sValue) {
		String sResult = "";
		XPathFactory xPathfactory = XPathFactory.newInstance();
		XPath xpath = xPathfactory.newXPath();
		try {
			XPathExpression expr = xpath.compile(XPath);
			Node node = (Node) expr.evaluate(answersDOM, XPathConstants.NODE);
			if (node != null) {
				node.setTextContent(sValue);
			}
		} catch (XPathExpressionException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return sResult;
	}

	public void createNewFormEntry(String XPath, int index) {
		XPathFactory xPathfactory = XPathFactory.newInstance();
		XPath xpath = xPathfactory.newXPath();
		try {
			XPathExpression expr = xpath.compile(XPath);
			Node node = (Node) expr.evaluate(answersDOM, XPathConstants.NODE);
			if (node != null) {
				Element form = node.getOwnerDocument().createElement("form");
				node.insertBefore(form, null);
				Element vernacular = node.getOwnerDocument().createElement("vernacular");
				Element ipa = node.getOwnerDocument().createElement("ipa");
				Element gloss = node.getOwnerDocument().createElement("gloss");
				form.insertBefore(vernacular, null);
				form.insertBefore(ipa, null);
				form.insertBefore(gloss, null);
			}
		} catch (XPathExpressionException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
