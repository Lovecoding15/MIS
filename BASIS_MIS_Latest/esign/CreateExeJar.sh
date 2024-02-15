#!/bin/bash

curdir=$(pwd)
rm  -fr /tmp/build
mkdir /tmp/build
mkdir /tmp/build/esign
cp mainClass /tmp/build/.
cp GlobalEsign.class /tmp/build/esign/.
cp -r lib/depends/*.jar /tmp/build/.
cd /tmp/build
jar -xvf FastInfoset.jar
jar -xvf activation.jar
jar -xvf dom.jar
jar -xvf gesStubs.jar
jar -xvf jax-qnmae.jar
jar -xvf jaxp-api.jar
jar -xvf jaxrpc-api.jar
jar -xvf jaxrpc-impl.jar
jar -xvf jaxrpc-spi.jar
jar -xvf jsr173_api.jar
jar -xvf mail.jar
jar -xvf relaxngDatatype.jar
jar -xvf sax.jar
jar -xvf xalan.jar
jar -xvf xercesImpl.jar
jar -xvf xsdlib.jar
jar -xvf saaj-api.jar
rm -fr META-INF
jar -xvf saaj-impl.jar
rm -fr *.jar
rm version.properties
jar cmf mainClass $curdir/lib/globalesign.jar META-INF esign com org javax
cd $curdir
