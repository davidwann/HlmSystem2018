
# -------------------------------------------------------
# compile your java code
# -------------------------------------------------------

echo "Starting to compile java web app..."
echo " "

# exit 0

# -------------------------------------------------------
# delete everything from classes directory
# -------------------------------------------------------

rm -r $HOME/Projects/HlmProjects/HlmProject_0001/hlm/classes/*

# exit 0



# linux wildcards for directories and files

# linux wildcards single star vs two stars



# javac -version
# javac foo.java

# javac -cp /home/david/Software/Servers/Tomcat8/lib/servlet-api.jar -d classes src/com/hornylikeme/demoservlets/myServlet.java

# javac -cp $CATALINA_HOME/lib/servlet-api.jar -d classes src/com/hornylikeme/demoservlets/*.java
# javac -cp $CATALINA_HOME/lib/servlet-api.jar -d classes src/com/hornylikeme/servlets/*.java


# javac -cp $CATALINA_HOME/lib/servlet-api.jar -d classes src/com/hornylikeme/*      {/*}  *  zero or more      /*.java

# javac -cp $CATALINA_HOME/lib/servlet-api.jar -d classes src/com/hornylikeme/*/*.java
# javac -cp $CATALINA_HOME/lib/servlet-api.jar -d classes src/com/hornylikeme/*/*/*.java


# find -name *.java > javac -cp $CATALINA_HOME/lib/servlet-api.jar -d classes

# find -name *.java | javac -cp $CATALINA_HOME/lib/servlet-api.jar -d classes


find -name *.java > sources.txt

# javac -cp $CATALINA_HOME/lib/servlet-api.jar:$CATALINA_HOME/lib/taglibs-standard-impl-1.2.5.jar:$CATALINA_HOME/lib/taglibs-standard-spec-1.2.5.jar -d classes @sources.txt

javac -cp $CATALINA_HOME/lib/servlet-api.jar -d classes @sources.txt

# $CATALINA_HOME/lib/taglibs-standard-impl-1.2.5.jar:$CATALINA_HOME/lib/taglibs-standard-spec-1.2.5.jar



#   /*

# exit 0

# -------------------------------------------------------
# deploy my web app
# -------------------------------------------------------

# rm -rf /home/david/Software/Servers/Tomcat8/webapps/hlm
rm -rf $CATALINA_HOME/webapps/hlm

# mkdir -p /home/david/Software/Servers/Tomcat8/webapps/hlm/WEB-INF
mkdir -p $CATALINA_HOME/webapps/hlm/WEB-INF

# cp /home/david/Dropbox/Projects/HlmProjects/HlmProject_0001/hlm/*.html /home/david/Software/Servers/Tomcat8/webapps/hlm
cp $HOME/Projects/HlmProjects/HlmProject_0001/hlm/*.html $CATALINA_HOME/webapps/hlm

# cp /home/david/Dropbox/Projects/HlmProjects/HlmProject_0001/hlm/*.jsp /home/david/Software/Servers/Tomcat8/webapps/hlm
cp $HOME/Projects/HlmProjects/HlmProject_0001/hlm/*.jsp $CATALINA_HOME/webapps/hlm

cp -r $HOME/Projects/HlmProjects/HlmProject_0001/hlm/register $CATALINA_HOME/webapps/hlm

# cp -r /home/david/Dropbox/Projects/HlmProjects/HlmProject_0001/hlm/classes /home/david/Software/Servers/Tomcat8/webapps/hlm/WEB-INF/classes
# cp -r $HOME/Dropbox/Projects/HlmProjects/HlmProject_0001/hlm/classes $CATALINA_HOME/webapps/hlm/WEB-INF/classes
cp -r $HOME/Projects/HlmProjects/HlmProject_0001/hlm/classes $CATALINA_HOME/webapps/hlm/WEB-INF

# cp /home/david/Dropbox/Projects/HlmProjects/HlmProject_0001/hlm/etc/web.xml /home/david/Software/Servers/Tomcat8/webapps/hlm/WEB-INF
cp $HOME/Projects/HlmProjects/HlmProject_0001/hlm/etc/web.xml $CATALINA_HOME/webapps/hlm/WEB-INF


# -------------------------------------------------------
# create a war file
# -------------------------------------------------------

rm $HOME/Projects/HlmProjects/HlmProject_0001/hlm/hlm.war

cd $CATALINA_HOME/webapps/hlm

jar -cf $HOME/Projects/HlmProjects/HlmProject_0001/hlm/hlm.war *

cd $HOME/Projects/HlmProjects/HlmProject_0001/hlm


# -------------------------------------------------------
# restart tomcat
# -------------------------------------------------------

$CATALINA_HOME/bin/shutdown.sh

$CATALINA_HOME/bin/startup.sh

# -------------------------------------------------------
# say goodbye
# -------------------------------------------------------

echo " "
echo "Finished compiling java web app"
