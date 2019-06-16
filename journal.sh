#!/bin/env bash

JDIR="Journal/$(date +%Y)/$(date +%m)"
mkdir -p $JDIR
$EDITOR "$JDIR/$(date +%d).txt"

