#!/bin/bash
START_TIME=$(date +%s)
echo "script executed at : $START_TIME"

sleep 10

END_TIME=$(date +%s)

TOTAL_TIME=$(($END_TIME - $START_TIME))

ECHO "TOTAL TIME=$TOTAL_TIME