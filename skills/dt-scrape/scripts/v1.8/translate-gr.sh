#!/bin/bash
# translate-gr.sh: GR→EN via browser or deepl stub
URL="$1"
echo "Translate: $URL" > /tmp/dt-log.txt
# browser snapshot "https://deepl.com/translator#el/en/$(curl -s $URL | grep body)" | extract text
chmod +x $0