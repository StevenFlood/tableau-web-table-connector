#!/bin/sh -Eux

BOOTSTRAP_DIR=./dist/bootstrap/3.3.5
JQUERY_DIR=./dist/jquery/1.11.1

mkdir -p ${BOOTSTRAP_DIR}
cp -Rv resources/bootstrap-3.3.5-dist/* ${BOOTSTRAP_DIR}

mkdir -p ${JQUERY_DIR}
cp resources/jquery/1.11.1/* ${JQUERY_DIR}

cp resources/tableau-wdc-js/tableauwdc-1.1.0.js ./dist
cp resources/mongodb.html ./dist
browserify --extension=".coffee"  coffee/mongodb_connector/mongodb_connector.coffee > dist/twdc-mongodb.js
