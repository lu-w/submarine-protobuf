#!/bin/bash

DST_DIR="../libraries/protocol"
NANOPB_DIR="../libraries/nanopb"

protoc --plugin=protoc-gen-nanopb=$NANOPB_DIR/generator/protoc-gen-nanopb --nanopb_out=$DST_DIR submarine.proto && sed 's/<pb.h>/"..\/nanopb\/pb.h"/g' $DST_DIR/submarine.pb.h > $DST_DIR/submarine.pb.h.new && rm $DST_DIR/submarine.pb.h && mv $DST_DIR/submarine.pb.h.new $DST_DIR/submarine.pb.h
