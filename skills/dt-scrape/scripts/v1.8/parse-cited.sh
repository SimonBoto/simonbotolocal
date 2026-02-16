#!/bin/bash
# parse-cited.sh: Grep fetch.md → refs.json/atomics.txt (v1.9)
FETCH_MD=$1
SLUG=$2
grep -E 'PMID|DOI|\\[[0-9]\\]|http' $FETCH_MD | sed 's/[^a-zA-Z0-9 ]//g' | grep -E 'Telomeres|Hayflick|PMID|DOI' > refs.txt
grep -i 'shorten|protect|limit|IR|VitD' $FETCH_MD | head -8 > atomics.txt
echo "{\"refs\":[\"$(cat refs.txt)\" ], \"atomics\":[\"$(cat atomics.txt)\" ]}" > parse-$SLUG.json
echo 'Parsed: refs.json ready'