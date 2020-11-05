#!/bin/bash

source .venv/bin/activate
nohup python app.py > log.txt 2>&1 &
deactivate
