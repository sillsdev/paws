// Copyright (c) 2016-2018 SIL International
// This software is licensed under the LGPL, version 2.1 or later
// (http://www.gnu.org/licenses/lgpl-2.1.html)
/**
 *
 */
package org.sil.paws.service;

import static org.junit.Assert.*;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.Locale;

import org.junit.After;
import org.junit.Before;
import org.junit.Rule;
import org.junit.Test;
import org.sil.paws.model.Language;
import org.sil.paws.Constants;
import org.sil.paws.backendprovider.XMLBackEndProvider;
import org.sil.paws.service.DatabaseMigrator;
import org.sil.utility.view.JavaFXThreadingRule;

/**
 * @author Andy Black
 *
 */
public class DatabaseMigratorTest {

	File databaseFile;
	DatabaseMigrator migrator;
	Language language;
	
	@Rule
	public JavaFXThreadingRule javafxRule = new JavaFXThreadingRule();

	/**
	 * @throws java.lang.Exception
	 */
	@Before
	public void setUp() throws Exception {
		// prime the pump by making sure version From4 is correct
		// because doMigration changes the content of the version From4 file
		Files.copy(Paths.get(Constants.UNIT_TEST_DATA_FILE_VERSION_4_ORIG),
				Paths.get(Constants.UNIT_TEST_DATA_FILE_VERSION_4),
				StandardCopyOption.REPLACE_EXISTING);
		// prime the pump by making sure version From8 is correct
		// because doMigration changes the content of the version From4 file
		Files.copy(Paths.get(Constants.UNIT_TEST_DATA_FILE_VERSION_8_ORIG),
				Paths.get(Constants.UNIT_TEST_DATA_FILE_VERSION_8),
				StandardCopyOption.REPLACE_EXISTING);
	}

	/**
	 * @throws java.lang.Exception
	 */
	@After
	public void tearDown() throws Exception {
		// restore version from 4 back to its initial state
		Files.copy(Paths.get(Constants.UNIT_TEST_DATA_FILE_VERSION_4_ORIG),
				Paths.get(Constants.UNIT_TEST_DATA_FILE_VERSION_4),
				StandardCopyOption.REPLACE_EXISTING);
		// restore version from 8 back to its initial state
		Files.copy(Paths.get(Constants.UNIT_TEST_DATA_FILE_VERSION_8_ORIG),
				Paths.get(Constants.UNIT_TEST_DATA_FILE_VERSION_8),
				StandardCopyOption.REPLACE_EXISTING);

	}

	@Test
	public void testMigratorFrom4() {
		databaseFile = new File(Constants.UNIT_TEST_DATA_FILE_VERSION_4);
		migrator = new DatabaseMigrator(databaseFile);
		String version = migrator.getVersion();
		assertEquals("4", version);
		migrator.doMigration();
		version = migrator.getVersion();
		assertEquals(Constants.CURRENT_DATABASE_VERSION, version);
		Locale locale = new Locale("en");
		language = new Language();
		XMLBackEndProvider xmlBackEndProvider = new XMLBackEndProvider(language, locale);
		System.out.println("databaseFile='" + databaseFile.getPath() + "'");
		xmlBackEndProvider.loadLanguageDataFromFile(databaseFile);
		language = xmlBackEndProvider.getLanguage();
		assertEquals(Constants.CURRENT_DATABASE_VERSION, language.getValue("/paws/@dbversion"));
		assertEquals("True", language.getValue("/paws/@outputGrammar"));
		assertEquals("True", language.getValue("/paws/@outputWriter"));
		assertEquals("True", language.getValue("/paws/@outputWriterPracticalFrench"));
		assertEquals("False", language.getValue("/paws/@outputWriterPracticalSpanish"));
		assertEquals("no", language.getValue("/paws/typology/@noCaseExperiencer"));
		assertEquals("no", language.getValue("/paws/final/@checkedOff"));
	}

	@Test
	public void testMigratorFrom8() {
		databaseFile = new File(Constants.UNIT_TEST_DATA_FILE_VERSION_8);
		migrator = new DatabaseMigrator(databaseFile);
		String version = migrator.getVersion();
		assertEquals("8", version);
		migrator.doMigration();
		version = migrator.getVersion();
		assertEquals(Constants.CURRENT_DATABASE_VERSION, version);
		Locale locale = new Locale("en");
		language = new Language();
		XMLBackEndProvider xmlBackEndProvider = new XMLBackEndProvider(language, locale);
		xmlBackEndProvider.loadLanguageDataFromFile(databaseFile);
		language = xmlBackEndProvider.getLanguage();
		assertEquals(Constants.CURRENT_DATABASE_VERSION, language.getValue("/paws/@dbversion"));
		assertEquals("True", language.getValue("/paws/@outputWriterPracticalFrench"));
		assertEquals("fr", language.getValue("/paws/language/langNames/langName[@lang='fr']/@lang"));
		assertEquals("no", language.getValue("/paws/typology/@noCaseExperiencer"));
		assertEquals("no", language.getValue("/paws/adjp/modifiersDegree/@checked"));
		assertEquals("no", language.getValue("/paws/final/@checkedOff"));
	}
}
