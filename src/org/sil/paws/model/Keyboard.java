/**
 * Copyright (c) 2024 SIL International
 * This software is licensed under the LGPL, version 2.1 or later
 * (http://www.gnu.org/licenses/lgpl-2.1.html)
 */

package org.sil.paws.model;

import org.sil.utility.service.keyboards.KeyboardInfo;

/**
 * @author Andy Black
 *
 */
public class Keyboard {
	String locale;
	String description;
	int windowsLangID = 0;

	public Keyboard() {
		locale = "en";
		description = "English";
	}

	public Keyboard(String locale, String description, int id) {
		this.locale = locale;
		this.description = description;
		windowsLangID = id;
	}

	public Keyboard(KeyboardInfo ki) {
		this.locale = ki.getLocale().getDisplayName();
		this.description = ki.getDescription();
		this.windowsLangID = ki.getWindowsLangID();
	}

	public String getLocale() {
		return locale;
	}

	public void setLocale(String locale) {
		this.locale = locale;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getWindowsLangID() {
		return windowsLangID;
	}

	public void setWindowsLangID(int windowsLangID) {
		this.windowsLangID = windowsLangID;
	}
}
