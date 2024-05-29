#!/bin/sh
curl -s -XPOST -G "http://localhost:50021/audio_query?speaker="$1 --data-urlencode text=$2 | curl -s -XPOST "http://localhost:50021/synthesis?speaker="$1 -H 'accept: audio/wav' -H 'Content-Type: application/json' -d @- > output.wav
