/**
 * Copyright (c) 2016-2018 SIL International
 * This software is licensed under the LGPL, version 2.1 or later
 * (http://www.gnu.org/licenses/lgpl-2.1.html)
 */
package org.sil.paws.model;

import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;

import org.w3c.dom.Document;
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

	public Language() {
		super(); 
	}

	public Language(Document answersDOM) {
		super();
		this.answersDOM = answersDOM;
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
			node.setTextContent(sValue);
		} catch (XPathExpressionException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return sResult;
	}
}
