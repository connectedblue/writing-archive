#!/usr/bin/env bash

. ./shared.sh

echo $DIARY_XML
cd wordpress-export-to-markdown && npm install && node index.js


