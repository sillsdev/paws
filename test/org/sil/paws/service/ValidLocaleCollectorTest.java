/**
 * Copyright (c) 2016-2018 SIL International
 * This software is licensed under the LGPL, version 2.1 or later
 * (http://www.gnu.org/licenses/lgpl-2.1.html)
 */

package org.sil.paws.service;

import static org.junit.Assert.*;

import java.util.Locale;
import java.util.Map;
import java.util.ResourceBundle;
import java.util.Set;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

/**
 * @author Andy Black
 *
 */
public class ValidLocaleCollectorTest {

	ValidLocaleCollector collector;
	/**
	 * @throws java.lang.Exception
	 */
	@Before
	public void setUp() throws Exception {
		collector = new ValidLocaleCollector(new Locale("en"));
	}

	/**
	 * @throws java.lang.Exception
	 */
	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void collectLocalesTest() {
		checkALocale("en", "English", "French (français)", "Spanish (español)");
		checkALocale("es", "inglés (English)", "francés (français)", "español");
		checkALocale("fr", "anglais (English)", "français", "espagnol (español)");
	}
	
	private void checkALocale(String sLocale, String contains1, String contains2, String contains3) {
		collector.setCurrentLocale(new Locale(sLocale));
		collector.collectValidLocales();
		Map<String, ResourceBundle> locales = collector.getValidLocales();
		assertNotNull(locales);
		assertEquals(3, locales.size());
		Set<String> names = locales.keySet(); 
		assertEquals(3, names.size());
		assertTrue(names.contains(contains1));
		assertTrue(names.contains(contains2));
		assertTrue(names.contains(contains3));
	}

}
