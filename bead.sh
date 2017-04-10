#!/bin/bash

cd $2

for file in *.docx;
do
  unzip -p "$file" word/document.xml | sed -e 's/<[^>]\{1,\}>//g; s/[^[:print:]]\{1,\}//g' | grep -q  $1 && echo $file
done
