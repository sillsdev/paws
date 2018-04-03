/**
 * Copyright (c) 2016-2018 SIL International
 * This software is licensed under the LGPL, version 2.1 or later
 * (http://www.gnu.org/licenses/lgpl-2.1.html)
 */
package org.sil.paws;

/**
 * @author Andy Black
 *
 */
public class Constants {
	public static final String VERSION_NUMBER = "1.0.0";
	public static final int CURRENT_DATABASE_VERSION = 2;

	public static final String RESOURCE_LOCATION = "org.sil.paws.resources.paws";

	public static final String PAWS_DATA_FILE_EXTENSION = "paw";
	public static final String PAWS_DATA_FILE_EXTENSIONS = "*."
			+ PAWS_DATA_FILE_EXTENSION;
	public static final String PAWS_STARTER_FILE = "resources/starterFile.tre";
	public static final String DEFAULT_DIRECTORY_NAME = "My PAWS";

	public static final String UTF8_ENCODING = "UTF8";
	public static final String MIGRATION_XSLT_FILE_NAME = "resources/DataMigration";
	public static final String FILE_PROTOCOL = "file://";

	// Unit Testing constants
	public static final String UNIT_TEST_DATA_FILE_NAME = "test/org/sil/paws/testdata/TestData.";
	public static final String UNIT_TEST_DATA_FILE = "test/org/sil/paws/testdata/TestData.paw";
	public static final String UNIT_TEST_DATA_FILE_BAD_TREE = "test/org/sil/paws/testdata/TestDataBadTree.paw";
	public static final String UNIT_TEST_DATA_FILE_VERSION_000 = "test/org/sil/paws/testdata/TestDataVersion000.paw";
	public static final String UNIT_TEST_DATA_FILE_VERSION_001 = "test/org/sil/paws/testdata/TestDataVersion001.paw";
	public static final String UNIT_TEST_DATA_FILE_VERSION_002 = "test/org/sil/paws/testdata/TestDataVersion002.paw";
	public static final String UNIT_TEST_DATA_FILE_VERSION_2 = "test/org/sil/paws/testdata/TestDataVersion2.paw";
}
