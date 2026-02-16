#!/bin/bash
# doi-resolve.sh: Batch DOI/PMID from ref titles (v1.8)
QUERY="$1"  # "Title Year Tsoukalas"
echo "web_search DOI/PMID: $QUERY" > /tmp/dt-log.txt
# Placeholder: curl brave/search "DOI $QUERY" | jq .results[0].url
# Output: doi:10.xxxx/pmid:xxx >> $2
chmod +x $0