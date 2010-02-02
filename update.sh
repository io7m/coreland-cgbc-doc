#!/bin/sh
make clean html-split html-single css txt package release &&
  rsync -avz --delete release/ www:/sites/waste/doc/cgbc-doc-release/
