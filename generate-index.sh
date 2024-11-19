#!/bin/bash
# Generates index.json file listing all markdown files in posts directory

cd posts
ls *.md | jq -R -s -c 'split("\n")[:-1]' > index.json
