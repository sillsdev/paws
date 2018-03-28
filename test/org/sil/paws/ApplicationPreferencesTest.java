// Copyright (c) 2016-2018 SIL International 
// This software is licensed under the LGPL, version 2.1 or later 
// (http://www.gnu.org/licenses/lgpl-2.1.html) 

package org.sil.paws;

import static org.junit.Assert.*;

import java.io.File;
import java.io.IOException;

import javafx.stage.Stage;

import org.junit.After;
import org.junit.Before;
import org.junit.Rule;
import org.junit.Test;
import org.sil.paws.ApplicationPreferences;
import org.sil.paws.view.JavaFXThreadingRule;

public class ApplicationPreferencesTest {

	@Rule
	public JavaFXThreadingRule jfxRule = new JavaFXThreadingRule();

	ApplicationPreferences applicationPreferences;
	File fileLastUsed;
	String languageLastUsed;
	Stage windowStageLastUsed;
	boolean showStatusBarLastUsed;

	@Before
	public void setUp() throws Exception {
		applicationPreferences = new ApplicationPreferences(this);
		fileLastUsed = applicationPreferences.getLastOpenedFile();
		languageLastUsed = applicationPreferences.getLastLocaleLanguage();
		applicationPreferences.setLastOpenedFilePath("last opened file");
		applicationPreferences.setLastLocaleLanguage("en");
		showStatusBarLastUsed = applicationPreferences.getShowStatusBar();
		windowStageLastUsed = new Stage();
		windowStageLastUsed = applicationPreferences.getLastWindowParameters(ApplicationPreferences.LAST_WINDOW, windowStageLastUsed, 400., 400.);
	}

	@After
	public void tearDown() throws Exception {
		applicationPreferences.setLastOpenedFilePath(fileLastUsed);
		applicationPreferences.setLastLocaleLanguage(languageLastUsed);
		applicationPreferences.setShowStatusBar(showStatusBarLastUsed);
		applicationPreferences.setLastWindowParameters(ApplicationPreferences.LAST_WINDOW, windowStageLastUsed);
	}

	@Test
	public void lastOpenedFile() {
		assertEquals("last opened file", "last opened file",
				applicationPreferences.getLastOpenedFilePath());
		applicationPreferences.setLastOpenedFilePath("mimi");
		assertEquals("last opened file", "mimi", applicationPreferences.getLastOpenedFilePath());
		try {
			File f = File.createTempFile("ApplicationPreferencesTest", null);
			applicationPreferences.setLastOpenedFilePath(f);
			String fPath = f.getPath();
			f.delete();
			assertEquals("file path", fPath, applicationPreferences.getLastOpenedFilePath());
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@Test
	public void lastLanguage() {
		assertEquals("locale language", "en", applicationPreferences.getLastLocaleLanguage());
		applicationPreferences.setLastLocaleLanguage("es");
		assertEquals("locale language", "es", applicationPreferences.getLastLocaleLanguage());
	}
	
	@Test
	public void lastMainWindow() {
		checkWindowParameters(560., 860., 20., 21., ApplicationPreferences.LAST_WINDOW);
	}

	public void checkWindowParameters(Double height, Double width, Double positionX,
			Double positionY, String sWindow) {
		Stage testSetStage = new Stage();
		Stage testGetStage = new Stage();
		testSetStage.setHeight(height);
		testSetStage.setWidth(width);
		testSetStage.setX(positionX);
		testSetStage.setY(positionY);
		testSetStage.setMaximized(false);
		applicationPreferences.setLastWindowParameters(sWindow, testSetStage);
		testGetStage = applicationPreferences.getLastWindowParameters(sWindow, testGetStage, 400., 400.);
		assertEquals(height, testGetStage.getHeight(), 0);
		assertEquals(width, testGetStage.getWidth(), 0);
		assertEquals(positionX, testGetStage.getX(), 0);
		assertEquals(positionY, testGetStage.getY(), 0);
		assertEquals(false, testGetStage.isMaximized());
		testSetStage.setMaximized(true);
		applicationPreferences.setLastWindowParameters(sWindow, testSetStage);
		testGetStage = applicationPreferences.getLastWindowParameters(sWindow, testGetStage, 400., 400.);
		assertEquals(height, testGetStage.getHeight(), 0);
		assertEquals(width, testGetStage.getWidth(), 0);
		assertEquals(positionX, testGetStage.getX(), 0);
		assertEquals(positionY, testGetStage.getY(), 0);
		assertEquals(true, testGetStage.isMaximized());
	}

	@Test
	public void showStatusBar() {
		assertEquals("show status bar", false, applicationPreferences.getShowStatusBar());
		applicationPreferences.setShowStatusBar(true);
		assertEquals("show status bar", true, applicationPreferences.getShowStatusBar());
	}
}
