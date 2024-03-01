// Copyright (c) 2018-2023 SIL International 
// This software is licensed under the LGPL, version 2.1 or later 
// (http://www.gnu.org/licenses/lgpl-2.1.html) 
/**
 * 
 */
package org.sil.paws.service;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

import org.sil.paws.Constants;
import org.sil.utility.HandleExceptionMessage;
import org.sil.utility.xml.XsltParameter;
import org.w3c.dom.Document;

/**
 * @author Andy Black
 *
 */
public class DatabaseMigrator {

	String[][] versionToTransform = {
			{"4", "DBVersion4To5.xsl"},
			{"5", "DBVersion5To6.xsl"},
			{"6", "DBVersion6To7.xsl"},
			{"7", "DBVersion7To7a.xsl"},
			{"7a", "DBVersion7aTo8.xsl"},
			{"8", "DBVersion8To9.xsl"},
			{"9", "DBVersion9To9a.xsl"},
			{"9a", "DBVersion9aTo9b.xsl"},
			{"9b", "DBVersion9bTo10.xsl"},
			{"10", "DBVersion10To11.xsl"},
			{"11", "DBVersion11To12.xsl"},
			{"12", "DBVersion12To13.xsl"},
			{"13", "DBVersion13To14.xsl"},
	};
	File databaseFile;

	public DatabaseMigrator(File dataFile) {
		this.databaseFile = dataFile;
	}

	public File getDatabaseFile() {
		return databaseFile;
	}

	public void setDatabaseFile(File databaseFile) {
		this.databaseFile = databaseFile;
	}

	public String getVersion() {
		String version = "-1";
		InputStreamReader reader;
		try {
			reader = new InputStreamReader(new FileInputStream(databaseFile),
					Constants.UTF8_ENCODING);
			BufferedReader bufr = new BufferedReader(reader);
			String line = bufr.readLine();
			while (line != null && !line.contains("<paws") && !line.contains("<Paws")) {
				line = bufr.readLine();
			}
			int i = line.indexOf("dbversion=");
			if (i == -1) {
				// it's the first version which did not have a version
				// number in the root element
				version = "1";
			} else {
				String s = line.substring(i + 11);
				int iEnd = s.indexOf("\"");
				if (iEnd > -1) {
					version = s.substring(0, iEnd);
				}
			}
			bufr.close();
			reader.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return version;
	}

	public void doMigration() {
		try {
			String version = getVersion();
			// make a backup of the database file just in case
			String sFile = databaseFile.getPath();
			int i = sFile.lastIndexOf(Constants.PAWS_DATA_FILE_EXTENSION);
			String sBackupFileName = sFile.substring(0, i) + "bak";
			Files.copy(Paths.get(databaseFile.getPath()), Paths.get(sBackupFileName),
					StandardCopyOption.REPLACE_EXISTING);

			boolean doMigration = false;
			File file = databaseFile;
			for (String[] v : versionToTransform) {
				if (v[0].equals(version)) {
					doMigration = true;
				}
				if (doMigration) {
						List<XsltParameter> params = new ArrayList<XsltParameter>();
						file = applyMigrationTransformToFile(v[0], file, v[1], params);
				}
			}
			if (doMigration) {
				Files.copy(Paths.get(file.getPath()), Paths.get(databaseFile.getPath()),
						StandardCopyOption.REPLACE_EXISTING, StandardCopyOption.COPY_ATTRIBUTES);
			}
			// TODO: delete the temp files
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private File applyMigrationTransformToFile(String version, File file, String transform, List<XsltParameter> params) {
		String stylesheet = Constants.MIGRATION_XSLT_FILE_NAME + transform;
		File tempSaveFile = null;
		try {
			tempSaveFile = File.createTempFile("PawsDataMigration" + version, ".paw");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		try {
			File xslt = new File(stylesheet);
			if (!xslt.exists()) {
				throw new DataMigrationException(xslt.getPath());
			}
			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();

			DocumentBuilder builder = factory.newDocumentBuilder();
			Document document = builder.parse(file);
			// Use a Transformer for output
			TransformerFactory tFactory = TransformerFactory.newInstance();
			StreamSource stylesource = new StreamSource(stylesheet);
			Transformer transformer = tFactory.newTransformer(stylesource);
			if (params.size() > 0) {
				for (XsltParameter param : params) {
					transformer.setParameter(param.name, param.value);
				}
			}

			DOMSource source = new DOMSource(document);
			StreamResult result = new StreamResult(tempSaveFile);
			transformer.transform(source, result);
		} catch (Exception e) {
			e.printStackTrace();
			HandleExceptionMessage.show("Migration Error", "Failed to transform", e.getMessage(),
					true);
		}
		return tempSaveFile;
	}
}
