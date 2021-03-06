/**
 * Copyright (c) 2016-2018 SIL International
 * This software is licensed under the LGPL, version 2.1 or later
 * (http://www.gnu.org/licenses/lgpl-2.1.html)
 */

package org.sil.paws.service;

import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

import org.sil.paws.Constants;
import org.sil.paws.model.Language;
import org.sil.utility.DateTimeNormalizer;
import org.sil.utility.xml.XsltParameter;
import org.w3c.dom.Document;
import org.xml.sax.SAXException;

/**
 * @author Andy Black Singleton pattern
 *
 */
public class OutputGenerator {

	private static OutputGenerator instance;
	private Language language;
	private String sConfigurationDirectory;
	private String transformsDirectory;
	private TransformerFactory tFactory;

	private Path configPath;
	private String sDtdPath;
	private String sDateTimeStamp = "today";
	private String sPAWSVersionNumber = "a number";
	LocalDateTime dateTime;
	DOMSource source;
	private Transformer transformerPAWSSKMasterGrammarMapper;
	private Transformer transformerPAWSSKMasterWriterPracticalMapper;
	private Transformer transformerXLingPapRemoveAnyContent;
	private Transformer transformerXLingPap1;
	private Transformer transformerPAWSSKMasterWriterPracticalSpanishMapper;
	private Transformer transformerPAWSSKMasterWriterPracticalFrenchMapper;
	private Transformer transformerPAWSSKParameterizedExample;

	private List<String> parameters = Arrays.asList("QP", "AdvP", "AdjP", "NP", "PP", "Prop",
			"Pron", "IP", "Comp", "Q", "RelCl", "AdvCl", "Neg", "Coord", "Focus", "Excl");

	private OutputGenerator() {
	}

	private OutputGenerator(Language language) {
		this.language = language;
	}

	public static OutputGenerator getInstance() {
		if (instance == null) {
			instance = new OutputGenerator();
		}
		return instance;
	}

	public static OutputGenerator getInstance(Language language) {
		if (instance == null) {
			instance = new OutputGenerator(language);
		} else {
			instance.setLanguage(language);
		}
		return instance;
	}

	public Language getLanguage() {
		return language;
	}

	public void setLanguage(Language language) {
		this.language = language;
	}

	public String getConfigurationDirectory() {
		return sConfigurationDirectory;
	}

	public void setConfigurationDirectory(String sConfigurationDirectory) {
		this.sConfigurationDirectory = sConfigurationDirectory;
		configPath = Paths.get(sConfigurationDirectory);
		sDtdPath = Constants.FILE_PROTOCOL + configPath.toUri().getPath() + "Transforms/";
	}

	public String getDateTimeStamp() {
		return sDateTimeStamp;
	}

	public void setDateTimeStamp(String sDateTimeStamp) {
		this.sDateTimeStamp = sDateTimeStamp;
	}

	public String getPAWSVersionNumber() {
		return sPAWSVersionNumber;
	}

	public void setPAWSVersionNumber(String sPAWSVersionNumber) {
		this.sPAWSVersionNumber = sPAWSVersionNumber;
	}

	public void setupTransformInitialization() {
		transformsDirectory = sConfigurationDirectory + "Transforms" + File.separator;
		tFactory = TransformerFactory.newInstance("net.sf.saxon.TransformerFactoryImpl", null);
	}

	public void initOutputTransforms(String sConfigurationDirectory) {
		try {
			this.sConfigurationDirectory = sConfigurationDirectory;
			String transformsDirectory = sConfigurationDirectory + "Transforms" + File.separator;
			TransformerFactory tFactory = TransformerFactory.newInstance(
					"net.sf.saxon.TransformerFactoryImpl", null);
			StreamSource stylesource = new StreamSource(transformsDirectory
					+ "PAWSSKMasterGrammarMapper.xsl");
			transformerPAWSSKMasterGrammarMapper = tFactory.newTransformer(stylesource);
			stylesource = new StreamSource(transformsDirectory
					+ "PAWSSKMasterWriterPracticalMapper.xsl");
			transformerPAWSSKMasterWriterPracticalMapper = tFactory.newTransformer(stylesource);
			initXLingPaperTransforms();
			stylesource = new StreamSource(transformsDirectory
					+ "PAWSSKMasterWriterPracticalSpanishMapper.xsl");
			transformerPAWSSKMasterWriterPracticalSpanishMapper = tFactory
					.newTransformer(stylesource);
			stylesource = new StreamSource(transformsDirectory
					+ "PAWSSKMasterWriterPracticalFrenchMapper.xsl");
			transformerPAWSSKMasterWriterPracticalFrenchMapper = tFactory
					.newTransformer(stylesource);
			stylesource = new StreamSource(transformsDirectory + "PAWSSKParameterizedExample.xsl");
			transformerPAWSSKParameterizedExample = tFactory.newTransformer(stylesource);
		} catch (TransformerConfigurationException e) {
			e.printStackTrace();
		}
	}

	public void initMasterGrammarMapperTransform() {
		try {
			if (transformerPAWSSKMasterGrammarMapper == null) {
				StreamSource stylesource = new StreamSource(transformsDirectory
						+ "PAWSSKMasterGrammarMapper.xsl");
				transformerPAWSSKMasterGrammarMapper = tFactory.newTransformer(stylesource);
			}
		} catch (TransformerConfigurationException e) {
			e.printStackTrace();
		}
	}

	public void initParameterizedExampleTransform() {
		try {
			if (transformerPAWSSKParameterizedExample == null) {
				StreamSource stylesource = new StreamSource(transformsDirectory
						+ "PAWSSKParameterizedExample.xsl");
				transformerPAWSSKParameterizedExample = tFactory.newTransformer(stylesource);
			}
		} catch (TransformerConfigurationException e) {
			e.printStackTrace();
		}
	}

	public void initMasterWriterPracticalMapperTransform() {
		try {
			if (transformerPAWSSKMasterWriterPracticalMapper == null) {
				StreamSource stylesource = new StreamSource(transformsDirectory
						+ "PAWSSKMasterWriterPracticalMapper.xsl");
				transformerPAWSSKMasterWriterPracticalMapper = tFactory.newTransformer(stylesource);
			}
		} catch (TransformerConfigurationException e) {
			e.printStackTrace();
		}
	}

	public void initXLingPaperTransforms() throws TransformerConfigurationException {
		try {
			if (transformerXLingPapRemoveAnyContent == null || transformerXLingPap1 == null) {
				StreamSource stylesource = new StreamSource(transformsDirectory
						+ "XLingPapRemoveAnyContent.xsl");
				transformerXLingPapRemoveAnyContent = tFactory.newTransformer(stylesource);
				stylesource = new StreamSource(transformsDirectory + "XLingPap1.xsl");
				transformerXLingPap1 = tFactory.newTransformer(stylesource);
			}
		} catch (TransformerConfigurationException e) {
			e.printStackTrace();
		}
	}

	public void initXLingPaperTransform1() {
		try {
			if (transformerXLingPapRemoveAnyContent == null) {
				StreamSource stylesource = new StreamSource(transformsDirectory
						+ "XLingPapRemoveAnyContent.xsl");
				transformerXLingPapRemoveAnyContent = tFactory.newTransformer(stylesource);
			}
		} catch (TransformerConfigurationException e) {
			e.printStackTrace();
		}
	}

	public void initXLingPaperTransform2() {
		try {
			if (transformerXLingPap1 == null) {
				StreamSource stylesource = new StreamSource(transformsDirectory + "XLingPap1.xsl");
				transformerXLingPap1 = tFactory.newTransformer(stylesource);
			}
		} catch (TransformerConfigurationException e) {
			e.printStackTrace();
		}
	}

	public void initMasterWriterPracticalSpanishMapperTransform() {
		try {
			if (transformerPAWSSKMasterWriterPracticalSpanishMapper == null) {
				StreamSource stylesource = new StreamSource(transformsDirectory
						+ "PAWSSKMasterWriterPracticalSpanishMapper.xsl");
				transformerPAWSSKMasterWriterPracticalSpanishMapper = tFactory
						.newTransformer(stylesource);
			}
		} catch (TransformerConfigurationException e) {
			e.printStackTrace();
		}
	}

	public void initMasterWriterPracticalFrenchMapperTransform() {
		try {
			if (transformerPAWSSKMasterWriterPracticalFrenchMapper == null) {
				StreamSource stylesource = new StreamSource(transformsDirectory
						+ "PAWSSKMasterWriterPracticalFrenchMapper.xsl");
				transformerPAWSSKMasterWriterPracticalFrenchMapper = tFactory
						.newTransformer(stylesource);
			}
		} catch (TransformerConfigurationException e) {
			e.printStackTrace();
		}
	}

	public boolean isReadyToGenerate() {
		if (transformerPAWSSKMasterGrammarMapper != null
				&& transformerPAWSSKMasterWriterPracticalMapper != null
				&& transformerXLingPapRemoveAnyContent != null && transformerXLingPap1 != null
				&& transformerPAWSSKMasterWriterPracticalSpanishMapper != null
				&& transformerPAWSSKMasterWriterPracticalFrenchMapper != null
				&& transformerPAWSSKParameterizedExample != null) {
			return true;
		}
		return false;

	}

	public void setupOutputFileGeneration(File languageFile) {
		try {
			dateTime = LocalDateTime.now();
			source = createDOMSource(languageFile);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void generateOutputFiles(File languageFile) {
		try {
			if (source == null) {
				setupOutputFileGeneration(languageFile);
			}

			if (!isReadyToGenerate()) {
				setupTransformInitialization();
			}
			if (transformerXLingPapRemoveAnyContent == null || transformerXLingPap1 == null) {
				initXLingPaperTransforms();
			}

			String sResult = language.getValue("/paws/@outputGrammar");
			if (sResult.equals("True")) {
				if (transformerPAWSSKMasterGrammarMapper == null) {
					initMasterGrammarMapperTransform();
				}
				generateFile(transformerPAWSSKMasterGrammarMapper, source,
						"//language/grammarFile", "grm");
			}

			sResult = language.getValue("/paws/@outputWriterPractical");
			if (sResult.equals("True")) {
				sDateTimeStamp = DateTimeNormalizer.normalizeDateTimeWithWords(dateTime,
						new Locale("en"));
				setDateTimeStamp(sDateTimeStamp);
				if (transformerPAWSSKMasterWriterPracticalMapper == null) {
					initMasterWriterPracticalMapperTransform();
				}
				generateWriterOutputs(source, "//language/writerPracticalFile",
						transformerPAWSSKMasterWriterPracticalMapper);
			}

			sResult = language.getValue("/paws/@outputWriterPracticalFrench");
			if (sResult.equals("True")) {
				sDateTimeStamp = DateTimeNormalizer.normalizeDateTimeWithWords(dateTime,
						new Locale("fr"));
				setDateTimeStamp(sDateTimeStamp);
				if (transformerPAWSSKMasterWriterPracticalFrenchMapper == null) {
					initMasterWriterPracticalFrenchMapperTransform();
				}
				generateWriterOutputs(source, "//language/writerPracticalFrenchFile",
						transformerPAWSSKMasterWriterPracticalFrenchMapper);
			}

			sResult = language.getValue("/paws/@outputWriterPracticalSpanish");
			if (sResult.equals("True")) {
				sDateTimeStamp = DateTimeNormalizer.normalizeDateTimeWithWords(dateTime,
						new Locale("es"));
				setDateTimeStamp(sDateTimeStamp);
				if (transformerPAWSSKMasterWriterPracticalSpanishMapper == null) {
					initMasterWriterPracticalSpanishMapperTransform();
				}
				generateWriterOutputs(source, "//language/writerPracticalSpanishFile",
						transformerPAWSSKMasterWriterPracticalSpanishMapper);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void generateGrammarOutputFile() {
		try {
			if (transformerPAWSSKMasterGrammarMapper == null) {
				initMasterGrammarMapperTransform();
			}
			generateFile(transformerPAWSSKMasterGrammarMapper, source, "//language/grammarFile",
					"grm");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void generateParameterizedExamplesOutputFiles() {
		try {
			if (transformerPAWSSKParameterizedExample == null) {
				initParameterizedExampleTransform();
			}
			String sDirectory = language.getValue("/paws/language/exampleFilesPath");
			String sAbbreviation = language.getValue("/paws/language/langAbbr");
			String sTextSFM = language.getValue("/paws/language/textSFM");
			for (String outputParam : parameters) {
				File resultFile = new File(sDirectory + File.separator + sAbbreviation + outputParam + "Test.txt");
				List<XsltParameter> params = new ArrayList<XsltParameter>();
				params.add(new XsltParameter("prmIdTitle", outputParam));
				params.add(new XsltParameter("prmTextSFM", sTextSFM));
				transformerPAWSSKParameterizedExample.clearParameters();
				for (XsltParameter param : params) {
					transformerPAWSSKParameterizedExample.setParameter(param.name, param.value);
				}
				StreamResult result = new StreamResult(resultFile);
				transformerPAWSSKParameterizedExample.transform(source, result);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void generateWriterPracticalOutputFile() {
		try {
			sDateTimeStamp = DateTimeNormalizer.normalizeDateTimeWithWords(dateTime, new Locale(
					"en"));
			setDateTimeStamp(sDateTimeStamp);
			if (transformerPAWSSKMasterWriterPracticalMapper == null) {
				initMasterWriterPracticalMapperTransform();
			}
			generateWriterOutputs(source, "//language/writerPracticalFile",
					transformerPAWSSKMasterWriterPracticalMapper);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void generateWriterPracticalFrenchOutputFile() {
		try {
			sDateTimeStamp = DateTimeNormalizer.normalizeDateTimeWithWords(dateTime, new Locale(
					"fr"));
			setDateTimeStamp(sDateTimeStamp);
			if (transformerPAWSSKMasterWriterPracticalFrenchMapper == null) {
				initMasterWriterPracticalFrenchMapperTransform();
			}
			generateWriterOutputs(source, "//language/writerPracticalFrenchFile",
					transformerPAWSSKMasterWriterPracticalFrenchMapper);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void generateWriterPracticalSpanishOutputFile() {
		try {
			sDateTimeStamp = DateTimeNormalizer.normalizeDateTimeWithWords(dateTime, new Locale(
					"es"));
			setDateTimeStamp(sDateTimeStamp);
			if (transformerPAWSSKMasterWriterPracticalSpanishMapper == null) {
				initMasterWriterPracticalSpanishMapperTransform();
			}
			generateWriterOutputs(source, "//language/writerPracticalSpanishFile",
					transformerPAWSSKMasterWriterPracticalSpanishMapper);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void generateWriterOutputs(DOMSource source, String sWriterFile, Transformer transformer)
			throws TransformerException, ParserConfigurationException, SAXException, IOException {
		createTransformParameters(transformer);
		File xLingPaperInput = generateFile(transformer, source, sWriterFile, "xml");
		createXLingPaperOutput(xLingPaperInput, sWriterFile);

		resetXLingPapDoctype(xLingPaperInput);
	}

	/**
	 * Changes the path to the XLingPap.dtd in the doctype element to just
	 * "XLingPap.dtd". We need to specify the location of the XLingPap.dtd file
	 * in the configuration files in order for the transform to produce the web
	 * page output. Once that is done, we replace it with what is needed by
	 * XLingPaper in the XMLmind XML Editor.
	 *
	 * @param xLingPaperInput
	 * @throws IOException
	 */
	public void resetXLingPapDoctype(File xLingPaperInput) throws IOException {
		StringBuilder sb = new StringBuilder();
		Files.lines(xLingPaperInput.toPath(), StandardCharsets.UTF_8).forEach(
				line -> sb.append(line + "\n"));
		// Maybe there's a better way, but we add blanks at the end to cover
		// the configuration path. For some reason, what was in the file
		// remains at the end after shortening the doctype; this remainder
		// causes problems when loading the XML file because the XML is not
		// well-formed.
		for (int i = 0; i < sDtdPath.length(); i++) {
			sb.append(" ");
		}
		String sXLingPaper = sb.toString().replace(sDtdPath + "XLingPap.dtd", "XLingPap.dtd");
		Path xLingPaperPath = xLingPaperInput.toPath();
		Files.write(xLingPaperPath, sXLingPaper.getBytes(StandardCharsets.UTF_8),
				StandardOpenOption.WRITE);
	}

	private void createTransformParameters(Transformer transformer) {
		adjustXlingPapDoctypeSystem(transformer);
		List<XsltParameter> params = new ArrayList<XsltParameter>();
		params.add(new XsltParameter("prmSDateTime", sDateTimeStamp));
		params.add(new XsltParameter("prmSVersionNumber", sPAWSVersionNumber));
		transformer.clearParameters();
		for (XsltParameter param : params) {
			transformer.setParameter(param.name, param.value);
		}
	}

	public void adjustXlingPapDoctypeSystem(Transformer transformer) {
		transformer.setOutputProperty("doctype-system", sDtdPath + "XLingPap.dtd");
	}

	public void createXLingPaperOutput(File inputFile, String sWriterFile)
			throws TransformerException, ParserConfigurationException, SAXException, IOException {
		adjustXlingPapDoctypeSystem(transformerXLingPapRemoveAnyContent);
		DOMSource source = createDOMSource(inputFile);
		File xLingPaperTemp = generateFile(transformerXLingPapRemoveAnyContent, source,
				sWriterFile, "tmp");
		source = createDOMSource(xLingPaperTemp);
		generateFile(transformerXLingPap1, source, sWriterFile, "htm");
		Files.delete(xLingPaperTemp.toPath());
		return;
	}

	public DOMSource createDOMSource(File sourceFile) throws ParserConfigurationException,
			SAXException, IOException {
		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
		DocumentBuilder builder = factory.newDocumentBuilder();
		Document document = builder.parse(sourceFile);
		DOMSource source = new DOMSource(document);
		return source;
	}

	public File generateFile(Transformer transformer, DOMSource source, String sXPath,
			String sExtension) throws TransformerException {
		String sResultFile = adjustFileNamePerExtension(sXPath, sExtension);
		File resultFile = new File(sResultFile);
		StreamResult result = new StreamResult(resultFile);
		transformer.transform(source, result);
		return resultFile;
	}

	public String adjustFileNamePerExtension(String sXPath, String sExtension) {
		String sFileName = language.getValue(sXPath);
		int i = sFileName.lastIndexOf(".");
		if (i >= 0) {
			sFileName = sFileName.substring(0, i + 1) + sExtension;
		}
		return sFileName;
	}
}
