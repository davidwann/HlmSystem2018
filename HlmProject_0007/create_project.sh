#!/bin/bash

# -----------------------------------------------
# created on or before 13-OCT-2018
# -----------------------------------------------

# create_project.sh

# create the project with maven

mvn archetype:generate -DgroupId=com.hlm -DartifactId=hlmWebApp -DarchetypeArtifactId=maven-archetype-webapp -DinteractiveMode=false

