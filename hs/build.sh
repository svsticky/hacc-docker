#!/bin/bash

rm -rf ./out || true
mkdir ./out

ghc ./main.hs -o ./main -outputdir ./out