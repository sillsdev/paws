// Copyright (c) 2016-2017 SIL International
// This software is licensed under the LGPL, version 2.1 or later
// (http://www.gnu.org/licenses/lgpl-2.1.html)
/**
 *
 */
package org.sil.paws.backendprovider;

import static org.junit.Assert.*;

import java.io.File;
import java.io.IOException;
import java.util.Locale;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.sil.paws.Constants;
import org.sil.paws.model.Language;
import org.sil.paws.backendprovider.XMLBackEndProvider;

/**
 * @author Andy Black
 *
 */
public class XMLBackEndProviderTest {

	XMLBackEndProvider xmlBackEndProvider;
	Language language;

	/**
	 * @throws java.lang.Exception
	 */
	@Before
	public void setUp() throws Exception {

		language = new Language();
		Locale locale = new Locale("en");
		xmlBackEndProvider = new XMLBackEndProvider(language, locale);
		File file = new File(Constants.UNIT_TEST_DATA_FILE);
		xmlBackEndProvider.loadLanguageDataFromFile(file);
	}

	/**
	 * @throws java.lang.Exception
	 */
	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void loadLanguageDataFromFileTest() {
		checkLoadedData();
	}

	public void checkLoadedData() {
		language = xmlBackEndProvider.getLanguage();
		assertNotNull(language);
		assertEquals("11", language.getValue("/paws/@dbversion"));		
		assertEquals("Central Mam", language.getValue("/paws/language/langNames/langName[@lang='en']"));
		assertEquals("Charis SIL AmArea", language.getValue("/paws/language/font/fontName"));
		assertEquals("VSO", language.getValue("/paws/typology/@wordOrder"));		
	}

	@Test
	public void saveLanguageDataToFileTest() {
		File tempSaveFile = null;
		try {
			tempSaveFile = File.createTempFile("PAWSTestSave", ".paw");
		} catch (IOException e) {
			e.printStackTrace();
		}

		if (tempSaveFile != null) {
			tempSaveFile.deleteOnExit();
		}
		xmlBackEndProvider.saveLanguageDataToFile(tempSaveFile);
		xmlBackEndProvider.loadLanguageDataFromFile(tempSaveFile);
		checkLoadedData();
		language.setValue("/paws/typology/@wordOrder", "SOV");
		xmlBackEndProvider.saveLanguageDataToFile(tempSaveFile);
		xmlBackEndProvider.loadLanguageDataFromFile(tempSaveFile);
		language = xmlBackEndProvider.getLanguage();
		assertNotNull(language);
		assertEquals("SOV", language.getValue("/paws/typology/@wordOrder"));		
	}
}
