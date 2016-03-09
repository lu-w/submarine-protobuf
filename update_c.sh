#!/bin/bash

protoc --plugin=protoc-gen-nanopb=../submarine/libraries/nanopb/generator/protoc-gen-nanopb --nanopb_out=../submarine/libraries/protocol submarine.proto && sed 's/<pb.h>/"..\/nanopb\/pb.h"/g' ../submarine/libraries/protocol/submarine.pb.h > ../submarine/libraries/protocol/submarine.pb.h.new && rm ../submarine/libraries/protocol/submarine.pb.h && mv ../submarine/libraries/protocol/submarine.pb.h.new ../submarine/libraries/protocol/submarine.pb.h
