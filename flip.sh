#!/bin/bash -f
if [ "$FLIP_HOME" = "" ]; then
	echo "FLIP_HOME is not defined, please use setenv to set flip home"
	echo "e.g :"
	echo "setenv FLIP_HOME /home/flip.3.2.1/bin"
	exit 1
fi

export LD_LIBRARY_PATH="$FLIP_HOME:$LD_LIBRARY_PATH"
export PATH="$FLIP_HOME:$PATH"
echo =====================================================
echo JAVA_HOME = $JAVA_HOME
echo =====================================================
echo LD_LIBRARY_PATH = $LD_LIBRARY_PATH
echo =====================================================
echo PATH = $PATH
echo =====================================================
echo = start flip
echo =====================================================
$java_32 -jar `echo $FLIP_HOME`/flip.jar
echo
echo =====================================================
echo = end flip
echo =====================================================
#end of script
