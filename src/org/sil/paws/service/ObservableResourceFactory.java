/**
 * Copyright (c) 2016-2018 SIL International
 * This software is licensed under the LGPL, version 2.1 or later
 * (http://www.gnu.org/licenses/lgpl-2.1.html)
 */

package org.sil.paws.service;

import java.util.ResourceBundle;

import javafx.beans.binding.StringBinding;
import javafx.beans.property.ObjectProperty;
import javafx.beans.property.SimpleObjectProperty;

/**
 * @author Andy Black
 * Singleton pattern
 * borrowed from
 *         https://stackoverflow.com/questions
 *         /32464974/javafx-change-application-language-on-the-run
 */
public class ObservableResourceFactory {

	private static ObservableResourceFactory instance;

	private ObjectProperty<ResourceBundle> resources = new SimpleObjectProperty<>();

	public static ObservableResourceFactory getInstance() {
		if (instance == null) {
			instance = new ObservableResourceFactory();
		}
		return instance;
	}

	public ObjectProperty<ResourceBundle> resourcesProperty() {
		return resources;
	}

	public final ResourceBundle getResources() {
		return resourcesProperty().get();
	}

	public final void setResources(ResourceBundle resources) {
		resourcesProperty().set(resources);
	}

	public StringBinding getStringBinding(String key) {
		return new StringBinding() {
			{
				bind(resourcesProperty());
			}

			@Override
			public String computeValue() {
				return getResources().getString(key);
			}
		};
	}
}
