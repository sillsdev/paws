/**
 * Copyright (c) 2016-2018 SIL International
 * This software is licensed under the LGPL, version 2.1 or later
 * (http://www.gnu.org/licenses/lgpl-2.1.html)
 */

package org.sil.paws.service;

import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.ResourceBundle;
import java.util.Set;
import java.util.TreeMap;

import org.sil.utility.StringUtilities;

/**
 * @author Andy Black
 *
 */
public class ValidLocaleCollector {

	Map<String, ResourceBundle> validLocales = new TreeMap<String, ResourceBundle>();
	Locale currentLocale;

	public ValidLocaleCollector(Locale currentLocale) {
		super();
		this.currentLocale = currentLocale;
	}

	public Map<String, ResourceBundle> getValidLocales() {
		return validLocales;
	}

	public void setCurrentLocale(Locale currentLocale) {
		this.currentLocale = currentLocale;
	}

	public void collectValidLocales() {
		Set<ResourceBundle> bundles = new HashSet<ResourceBundle>();
		for (Locale locale : Locale.getAvailableLocales()) {
			ResourceBundle rb = ResourceBundle.getBundle("org.sil.paws.resources.paws", locale);
			if (rb != null) {
				if (!StringUtilities.isNullOrEmpty(rb.getLocale().getDisplayName())) {
					bundles.add(rb);
				}
			}
		}
		validLocales.clear();
		for (ResourceBundle rb : bundles) {
			String currentLocaleName = rb.getLocale().getDisplayName(currentLocale);
			String nameToShow = currentLocaleName;
			Locale rbLocale = rb.getLocale();
			String nameInOtherLocale = rbLocale.getDisplayName(rbLocale);
			if (!nameInOtherLocale.equals(currentLocaleName)) {
				nameToShow = currentLocaleName + " (" + nameInOtherLocale + ")";
			}
			if (!StringUtilities.isNullOrEmpty(nameToShow)) {
				validLocales.putIfAbsent(nameToShow, rb);
			}
		}

	}

}
