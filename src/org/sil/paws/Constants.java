/**
 * Copyright (c) 2016-2020 SIL International
 * This software is licensed under the LGPL, version 2.1 or later
 * (http://www.gnu.org/licenses/lgpl-2.1.html)
 */
package org.sil.paws;

/**
 * @author Andy Black
 *
 */
public class Constants {
	public static final String VERSION_NUMBER = "1.1.7";
	public static final String CURRENT_DATABASE_VERSION = "11";
	public static final long OUTPUT_TRANSFORM_COUNT = 17;

	public static final String RESOURCE_LOCATION = "org.sil.paws.resources.paws";
	public static final String RESOURCE_SOURCE_LOCATION = "src/org/sil/paws/";

	public static final String PAWS_DATA_FILE_EXTENSION = "paw";
	public static final String PAWS_DATA_FILE_EXTENSIONS = "*."
			+ PAWS_DATA_FILE_EXTENSION;
	public static final String PAWS_STARTER_FILE = "resources/starterFile.tre";
	public static final String DEFAULT_DIRECTORY_NAME = "My PAWS";

	public static final String UTF8_ENCODING = "UTF8";
	public static final String MIGRATION_XSLT_FILE_NAME = "resources/configuration/Transforms/DataMigrations/";
	public static final String FILE_PROTOCOL = "file://";

	// Unit Testing constants
	public static final String UNIT_TEST_DATA_FILE_NAME = "test/org/sil/paws/testdata/TestData.";
	public static final String UNIT_TEST_DATA_FILE = "test/org/sil/paws/testdata/TestData.paw";
	public static final String UNIT_TEST_DATA_FILE_VERSION_4 = "test/org/sil/paws/testdata/DataMigrationTestFrom4.paw";
	public static final String UNIT_TEST_DATA_FILE_VERSION_4_ORIG = "test/org/sil/paws/testdata/DataMigrationTestFrom4Orig.paw";
	public static final String UNIT_TEST_DATA_FILE_VERSION_4To5 = "test/org/sil/paws/testdata/DataMigrationTestFrom4To5.paw";
	public static final String UNIT_TEST_DATA_FILE_VERSION_4To6 = "test/org/sil/paws/testdata/DataMigrationTestFrom4To6.paw";
	public static final String UNIT_TEST_DATA_FILE_VERSION_4To7 = "test/org/sil/paws/testdata/DataMigrationTestFrom4To7.paw";
	public static final String UNIT_TEST_DATA_FILE_VERSION_4To7a = "test/org/sil/paws/testdata/DataMigrationTestFrom4To7a.paw";
	public static final String UNIT_TEST_DATA_FILE_VERSION_4To8 = "test/org/sil/paws/testdata/DataMigrationTestFrom4To8.paw";
	public static final String UNIT_TEST_DATA_FILE_VERSION_4To9 = "test/org/sil/paws/testdata/DataMigrationTestFrom4To9.paw";
	public static final String UNIT_TEST_DATA_FILE_VERSION_4To9a = "test/org/sil/paws/testdata/DataMigrationTestFrom4To9a.paw";
	public static final String UNIT_TEST_DATA_FILE_VERSION_4To9b = "test/org/sil/paws/testdata/DataMigrationTestFrom4To9b.paw";
	public static final String UNIT_TEST_DATA_FILE_VERSION_4To10 = "test/org/sil/paws/testdata/DataMigrationTestFrom4To10.paw";
	public static final String UNIT_TEST_DATA_FILE_VERSION_8 = "test/org/sil/paws/testdata/DataMigrationTestFrom8.paw";
	public static final String UNIT_TEST_DATA_FILE_VERSION_8_ORIG = "test/org/sil/paws/testdata/DataMigrationTestFrom8Orig.paw";
	public static final String UNIT_TEST_DATA_FILE_VERSION_8To9 = "test/org/sil/paws/testdata/DataMigrationTestFrom8To9.paw";
	public static final String UNIT_TEST_DATA_FILE_VERSION_8To9a = "test/org/sil/paws/testdata/DataMigrationTestFrom8To9a.paw";
	public static final String UNIT_TEST_DATA_FILE_VERSION_8To9b = "test/org/sil/paws/testdata/DataMigrationTestFrom8To9b.paw";
	public static final String UNIT_TEST_DATA_FILE_VERSION_8To10 = "test/org/sil/paws/testdata/DataMigrationTestFrom8To10.paw";
	public static final String UNIT_TEST_DATA_FILE_VERSION_2 = "test/org/sil/paws/testdata/TestDataVersion2.paw";
}
