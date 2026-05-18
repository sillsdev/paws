#! /bin/bash
if [ -d output ]; then
 echo "	Cleaning output"
 rm -rf output > /dev/null
fi
echo "	invoking jpackage, part 1"
# to see more details, add the --verbose option
#	--verbose \
jpackage --type app-image \
	--input input \
	--dest output \
	--name PAWS \
	--main-jar paws.jar \
	--main-class org.sil.paws.MainApp \
	--java-options --enable-native-access=javafx.graphics \
	--java-options --enable-native-access=javafx.web \
	--java-options --enable-native-access=com.sun.jna \
	--add-modules java.rmi,jdk.management.jfr,jdk.jdi,jfx.incubator.input,jdk.xml.dom,java.xml,java.datatransfer,jdk.httpserver,javafx.base,java.desktop,java.security.sasl,jdk.zipfs,java.base,jfx.incubator.richtext,jdk.javadoc,jdk.management.agent,jdk.jshell,java.sql.rowset,javafx.swing,jdk.jsobject,jdk.sctp,jdk.unsupported,java.smartcardio,java.security.jgss,jdk.nio.mapmode,javafx.graphics,java.compiler,jdk.dynalink,javafx.fxml,jdk.unsupported.desktop,jdk.accessibility,javafx.media,jdk.security.jgss,java.sql,jdk.incubator.vector,javafx.web,java.transaction.xa,java.logging,java.xml.crypto,jdk.jfr,jdk.internal.md,jdk.net,java.naming,javafx.controls,jdk.internal.ed,java.prefs,java.net.http,jdk.compiler,jdk.internal.opt,jdk.jconsole,jdk.attach,jdk.internal.le,java.management,jdk.jdwp.agent,jdk.internal.jvmstat,java.instrument,jdk.management,jdk.security.auth,java.scripting,com.azul.tooling,jdk.jartool,java.management.rmi,jdk.localedata \
	--jlink-options "--include-locales=en,fr,es" \
	--icon input/PAWS.icns \
	--module-path jmods \
	--vendor "SIL International"
echo "	MoveResources"
./MoveResources.sh

