#!/bin/sh
echo "GET $TARGET" | vegeta attack -duration=0 | tee results.bin | vegeta report
