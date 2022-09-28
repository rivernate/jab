#!/usr/bin/env bash

# Requirements
# jq
# sponge

for i in *.json; do
    [ -f "$i" ] || break
    jq --sort-keys . "$i" | sponge "$i"
done
