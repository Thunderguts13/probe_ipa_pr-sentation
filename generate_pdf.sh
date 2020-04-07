#!/bin/bash

# This command generates a PDF file using pandoc (please install).
# The Puzzle Logo is removed because SVG images can't be handled.
# The detour via HTML seems necessary bacause the images are lost
# when going from markdown to PDF directly.

grep -v .svg probe_ipa.md | pandoc -f markdown -t html | pandoc -f html -o probe_ipa.pdf
