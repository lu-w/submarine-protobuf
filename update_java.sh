#!/bin/bash

DST_DIR="../SubmarineControl2/app/src/main/java"
protoc --java_out=$DST_DIR submarine.proto
