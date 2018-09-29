#!/bin/bash

# create_project.sh

# create the project with maven

mvn archetype:generate -DgroupId=com.hlm -DartifactId=hlmWebApp -DarchetypeArtifactId=maven-archetype-webapp -DinteractiveMode=false

