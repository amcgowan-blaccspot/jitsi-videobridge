cd ../ice4j &&
git pull &&
mvn clean &&
mvn install -DskipTests &&
cd ../libjitsi &&
git pull &&
mvn clean &&
mvn install -DskipTests &&
cd ../jitsi-videobridge &&
git pull && 
mvn clean &&
mvn compile exec:exec \
-Dexec.executable=java -Dexec.args="-cp %classpath org.jitsi.videobridge.Main \
--domain=\"dev.jitsi.com\" \
--host=\"192.168.1.99\" \
--port=\"5347\" \
--secret=\"\" \
-Djava.library.path=~/FM/jitsi-videobridge/lib/native/linux-64 \
-Djava.util.logging.config.file=~/FM/jitsi-videobridge/lib/logging.properties \
-Dnet.java.sip.communicator.SC_HOME_DIR_NAME=.jitsi-videobridge"
