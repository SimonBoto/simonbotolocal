#!/bin/bash
TEMPLATE=$1
VARS_FILE=$2
OUTPUT=$3
sed -i "s/{{UID}}/$(date +%Y%m%d%H%M%S)/g" $TEMPLATE
# Add vars from VARS_FILE (yaml-like)
while IFS='=' read -r key value; do
  sed -i "s/{{$key}}/$value/g" $TEMPLATE
done < $VARS_FILE
cp $TEMPLATE $OUTPUT
echo "Interp complete: $OUTPUT"