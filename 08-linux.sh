#!/bin/bash

##### special chaarcters ####

echo "All args passed to script: $@"
echo "number of vars passed to script: $#"
echo "script name: $0"
echo "present directory: $PWD"
echo "who is running: $USER"
echo "Home Directory of current user: $HOME"
echo "PID of the script: $$"
sleep 100 &
echo "PID of recently executed background process: $!"


