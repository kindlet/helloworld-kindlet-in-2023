#!/bin/sh
KEYSTORE=developer.keystore
JAR=kindlet.azw2
MANIFEST=main.manifest
###
ant jar
cp kindlet.jar $JAR
cp HelloWorld.jar $JAR
###
jarsigner -sigalg SHA1withDSA -digestalg SHA1 -keystore developer.keystore -storepass password $JAR dktest
jarsigner -sigalg SHA1withDSA -digestalg SHA1 -keystore developer.keystore -storepass password $JAR ditest
jarsigner -sigalg SHA1withDSA -digestalg SHA1 -keystore developer.keystore -storepass password $JAR dntest
