/**
 * Copyright (c) 2016-2018 SIL International
 * This software is licensed under the LGPL, version 2.1 or later
 * (http://www.gnu.org/licenses/lgpl-2.1.html)
 */

package org.sil.paws.service;

import static org.junit.Assert.*;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Locale;

import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamSource;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.sil.paws.Constants;
import org.sil.paws.backendprovider.XMLBackEndProvider;
import org.sil.paws.model.Language;

/**
 * @author Andy Black
 *
 */
public class OutputGeneratorTest {

	Language language;
	OutputGenerator generator;
	File languageFile;
	String sConfigurationDirectory = "";
	String transformsDirectory = "";
	TransformerFactory tFactory;

	/**
	 * @throws java.lang.Exception
	 */
	@Before
	public void setUp() throws Exception {
		language = new Language();
		Locale locale = new Locale("en");
		XMLBackEndProvider xmlBackEndProvider = new XMLBackEndProvider(language, locale);
		languageFile = new File(Constants.UNIT_TEST_DATA_FILE);
		xmlBackEndProvider.loadLanguageDataFromFile(languageFile);
		language = xmlBackEndProvider.getLanguage();
		generator = OutputGenerator.getInstance(language);
		sConfigurationDirectory = new File(".").getCanonicalPath() + File.separator + "resources"
				+ File.separator + "configuration" + File.separator;
		transformsDirectory = sConfigurationDirectory + "Transforms" + File.separator;
		tFactory = TransformerFactory.newInstance("net.sf.saxon.TransformerFactoryImpl", null);
	}

	/**
	 * @throws java.lang.Exception
	 */
	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void adjustFileNamePerExtensionTest() {
		String sNewName = generator.adjustFileNamePerExtension("//language/grammarFile", "grm");
		assertEquals("testdata/TestData.grm", sNewName);
		sNewName = generator.adjustFileNamePerExtension("//language/writerPracticalFile", "xml");
		assertEquals("testdata/TestDataWriterPractical.xml", sNewName);
		sNewName = generator.adjustFileNamePerExtension("//language/writerPracticalFile", "tmp");
		assertEquals("testdata/TestDataWriterPractical.tmp", sNewName);
		sNewName = generator.adjustFileNamePerExtension("//language/writerPracticalFile", "htm");
		assertEquals("testdata/TestDataWriterPractical.htm", sNewName);
	}

	@Test
	public void generateFileTest() {
		try {
			StreamSource stylesource = new StreamSource(transformsDirectory
					+ "PAWSSKMasterGrammarMapper.xsl");
			Transformer transformerPAWSSKMasterGrammarMapper = tFactory.newTransformer(stylesource);
			assertNotNull(transformerPAWSSKMasterGrammarMapper);
			DOMSource source = generator.createDOMSource(languageFile);
			assertNotNull(source);
			File result = generator.generateFile(transformerPAWSSKMasterGrammarMapper, source,
					"//language/grammarFile", "grm");
			assertNotNull(result);
			Path resultPath = result.toPath();
			assertEquals(true, Files.exists(resultPath));
			assertEquals(142500, Files.size(resultPath));
			Files.delete(resultPath);
		} catch (Exception e1) {
			e1.printStackTrace();
			fail("exception fired");
		}
	}

	@Test
	public void generateWriterOutputsTest() {
		try {
			generator.setConfigurationDirectory(sConfigurationDirectory);
			generator.setDateTimeStamp("today at 1:00pm");
			generator.setPAWSVersionNumber("testing 1, 2, 3");
			StreamSource stylesource = new StreamSource(transformsDirectory
					+ "PAWSSKMasterWriterPracticalMapper.xsl");
			Transformer transformerPAWSSKMasterWriterPracticalMapper = tFactory.newTransformer(stylesource);
			assertNotNull(transformerPAWSSKMasterWriterPracticalMapper);
			generator.initXLingPaperTransforms(transformsDirectory, tFactory);
			DOMSource source = generator.createDOMSource(languageFile);
			assertNotNull(source);
			String sTestDir = new File(".").getCanonicalPath() + File.separator + "testdata" + File.separator;
			generator.generateWriterOutputs(source, "//language/writerPracticalFile",
					transformerPAWSSKMasterWriterPracticalMapper);
			Path xmlResultPath = Paths.get(sTestDir + "TestDataWriterPractical.xml");
			assertEquals(true, Files.exists(xmlResultPath));
			Path htmResultPath = Paths.get(sTestDir + "TestDataWriterPractical.htm");
			assertEquals(true, Files.exists(htmResultPath));
			assertEquals(616394, Files.size(xmlResultPath));
			assertEquals(1392051, Files.size(htmResultPath));
			Files.delete(xmlResultPath);
			Files.delete(htmResultPath);
		} catch (Exception e1) {
			e1.printStackTrace();
			fail("exception fired");
		}
	}
}
