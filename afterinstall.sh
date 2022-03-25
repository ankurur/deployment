#!/bin/bash

sh /opt/tomcat/bin/shutdown.sh

cp wepapp.war /opt/tomcat/webapps/

sh /opt/tomcat/bin/startup.sh
