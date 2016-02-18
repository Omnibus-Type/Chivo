#!/bin/sh
cd "$(dirname "$0")"
pwd
# Autohnt TTFs
for TTF in TTFs_nothinted/*.ttf ; do
	command ttfautohint -v -i -W -D latn -w gDG "$TTF" ../Fonts/"$(basename "$TTF")"
	echo "===================================="
	echo ""$(basename "$TTF")" hintted"
	echo "===================================="
done