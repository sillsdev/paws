// Copyright (c) 2018 SIL International 
// This software is licensed under the LGPL, version 2.1 or later 
// (http://www.gnu.org/licenses/lgpl-2.1.html) 
/**
 * 
 */
package org.sil.paws.backendprovider;

import java.io.File;
import java.io.IOException;
import java.util.Locale;
import java.util.ResourceBundle;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.sil.paws.Constants;
import org.sil.paws.model.Language;
import org.sil.utility.HandleExceptionMessage;
import org.w3c.dom.Document;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

/**
 * @author Andy Black
 *
 */
public class XMLBackEndProvider extends BackEndProvider {

	Language language;
	String sFileError;
	String sFileErrorLoadHeader;
	String sFileErrorLoadContent;
	String sFileErrorSaveHeader;
	String sFileErrorSaveContent;

	/**
	 * @param language
	 */
	public XMLBackEndProvider(Language language, Locale locale) {
		this.language = language;
		setResourceStrings(locale);
	}

	private void setResourceStrings(Locale locale) {
		ResourceBundle bundle = ResourceBundle.getBundle(Constants.RESOURCE_LOCATION, locale);
		sFileError = bundle.getString("file.error");
		sFileErrorLoadHeader = bundle.getString("file.error.load.header");
		sFileErrorLoadContent = bundle.getString("file.error.load.content");
		sFileErrorSaveHeader = bundle.getString("file.error.save.header");
		sFileErrorSaveContent = bundle.getString("file.error.save.content");
	}

	public Language getLanguage() {
		return language;
	}

	public void setLanguage(Language language) {
		this.language = language;
	}

	/**
	 * Loads tree data from the specified file. The current tree data will be
	 * replaced.
	 * 
	 * @param file
	 */
	@Override
	public void loadLanguageDataFromFile(File file) {
		try {
			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
			// not sure we want this... dbf.setValidating(true);
			DocumentBuilder db = dbf.newDocumentBuilder();
			Document doc = db.parse(file);
			doc.getDocumentElement().normalize();
			language.setAnswersDOM(doc);
			// } catch (SAXParseException spe) {
			// // Error generated by the parser
			// System.out.println("\n** Parsing error" + ", line " +
			// spe.getLineNumber() + ", uri "
			// + spe.getSystemId());
			// System.out.println("  " + spe.getMessage());
			//
			// // Use the contained exception, if any
			// Exception x = spe;
			// if (spe.getException() != null)
			// x = spe.getException();
			// x.printStackTrace();
			// } catch (SAXException sxe) {
			// // Error generated by this application
			// // (or a parser-initialization error)
			// Exception x = sxe;
			// if (sxe.getException() != null)
			// x = sxe.getException();
			// x.printStackTrace();
			// } catch (ParserConfigurationException pce) {
			// // Parser with specified options
			// // cannot be built
			// pce.printStackTrace();
			// } catch (IOException ioe) {
			// // I/O error
			// ioe.printStackTrace();
		} catch (Exception e) { // catches ANY exception
			e.printStackTrace();
			HandleExceptionMessage.show(sFileError, sFileErrorLoadHeader, sFileErrorLoadContent
					+ file.getPath(), true);
		}
	}

	/**
	 * Saves the current tree data to the specified file.
	 * 
	 * @param file
	 */
	@Override
	public void saveLanguageDataToFile(File file) {
		try {
			Document doc = language.getAnswersDOM();
			TransformerFactory tf = TransformerFactory.newInstance();
			Transformer transformer = tf.newTransformer();
			DOMSource source = new DOMSource(doc);
			StreamResult result = new StreamResult(file);
			transformer.transform(source, result);
		} catch (Exception e) { // catches ANY exception
			e.printStackTrace();
			HandleExceptionMessage.show(sFileError, sFileErrorSaveHeader, sFileErrorSaveContent
					+ file.getPath(), true);
		}
	}

}
