#!/bin/sh

# Run the following command before executing this script:
# docker run --rm -it -p '127.0.0.1:50021:50021' voicevox/voicevox_engine:cpu-ubuntu20.04-latest

curl -s -XPOST -G "http://localhost:50021/audio_query?speaker="$1 --data-urlencode text=$2 | curl -s -XPOST "http://localhost:50021/synthesis?speaker="$1 -H 'accept: audio/wav' -H 'Content-Type: application/json' -d @- >output.wav
