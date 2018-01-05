#!/bin/bash

cd "$(dirname "$0")" || exit 1
# Go to the directory of the jar file.
cd ..

# Retrieving action from the param list
action="$1"
shift

# ANSI Colors
echoRed() { echo $'\e[0;31m'"$1"$'\e[0m'; }
echoGreen() { echo $'\e[0;32m'"$1"$'\e[0m'; }
echoYellow() { echo $'\e[0;33m'"$1"$'\e[0m'; }

#Bash options
shopt -s nullglob

JAR_FILES=( *.jar )
if [[ ${#JAR_FILES[@]} -gt 0 ]]; then
	APP_NAME="${JAR_FILES[0]}"
else
	echoRed "Unable to find any Jar file in `pwd`"
	exit 1
fi

JAVA_HOME=./jdk

start() {
  javaexe="$JAVA_HOME/bin/java -Dloader.path=./config"
  $javaexe -jar $APP_NAME --spring.profiles.active=server
}
case "$action" in
start)
  start "$@"; exit $?;;
*)
  echo "Usage: $0 {start}"; exit 1;
esac
