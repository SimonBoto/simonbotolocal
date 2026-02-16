#!/bin/bash
# Master DT-Scrape v1.8: Inline-safe, gateway-retry, auto-git
set -e
URL=$1; SLUG=$(echo $URL | sed 's/[^a-zA-Z0-9]/-/g' | cut -c1-20)
./folders-mk.sh
web_fetch $URL > fetch.md
./translate-gr.sh $URL > en-fetch.md
# Refs: grep citations → parallel doi-resolve.sh → interp ref-template > Refs/
# Atomics: grep claims → interp atomic-template
# VERIFY: ls | wc -l >10 Refs, >8 Atomic
edit 66-Literature/${SLUG}_Tsoukalas.md "rich hub"
git add 66-Literature 33-Atomic 55-MOCs && git commit -m "DT v1.8 ${SLUG}" || true
echo "v1.8 COMPLETE: ${SLUG} (Refs:Z Atom:Y)" > 22-Dashboards/dt-scrape-v1.8.json
chmod +x $0