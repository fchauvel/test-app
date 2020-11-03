#!/bin/bash

pwd

source .venv/bin/activate
nohup python app.py > log.txt 2>&1 &

