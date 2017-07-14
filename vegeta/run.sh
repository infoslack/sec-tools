#!/bin/sh
echo "GET $TARGET" | vegeta attack -duration=0 -rate=$REQUESTS -workers=$WORKERS | tee results.bin
