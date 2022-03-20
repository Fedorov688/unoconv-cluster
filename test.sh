#!/bin/bash

arr=(
"test.odt"
"testlarge.odt"
"testlargepic.odt"
"test.html"
)

export $(grep -v '^#' .env | xargs -d '\n')

start=`date +%s.%N`

for j in {1..5}; do
  echo "loop $j"
    for i in "${arr[@]}"
      do
        echo "$i"
        timenow=`date +%s.%N`
        screen -d -m bash -c "unoconv --server=$NFS_IP --port=2001 -o $NFS_FOLDER/$j-$i-$timenow.pdf -f pdf $NFS_FOLDER/$j-$i"
      done
  done

end=`date +%s.%N`

runtime=$( echo "$end - $start" | bc -l )
echo "$runtime"
