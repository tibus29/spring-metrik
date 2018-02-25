#!/bin/bash

function prop {
    grep "${1}" gradle.properties|cut -d'=' -f2
}

sonar-scanner -Dsonar.projectVersion=$(prop 'version')