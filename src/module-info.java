module org.sil.paws {
	// Exports
	exports org.sil.paws;
	exports org.sil.paws.backendprovider;
	exports org.sil.paws.model;
	exports org.sil.paws.service;
	exports org.sil.paws.view;

	opens org.sil.paws.view to javafx.fxml;

	// Java
	requires java.desktop;
	requires java.prefs;

	// JavaFX
	requires transitive javafx.controls;
	requires transitive javafx.fxml;
	requires javafx.graphics;
	requires javafx.swing;
	requires transitive javafx.web;

	// JNA
	requires com.sun.jna;
	requires com.sun.jna.platform;

	// LibJavaDev
	requires transitive org.sil.utility;

	// JUnit
	requires junit;

	// Other modules/libraries
	requires transitive org.controlsfx.controls;
	requires javafx.base;
	requires javafx.media;
	requires java.base;
	requires transitive java.xml;
	requires jakarta.xml.bind;
	requires jdk.jsobject;
}
