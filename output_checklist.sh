#!/bin/bash
OUTPUT_FILE=checklist.md
echo 'watch | fav | Session | Title | Speakers' > $OUTPUT_FILE
echo '--- | --- | ---|---|---' >> $OUTPUT_FILE
cat README.md | grep '|' | grep  -v -e '^Session' -e '^---' | while read L
do
  echo '[] | [] | '$L >> checklist.md >> $OUTPUT_FILE
done

