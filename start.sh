#!/bin/bash

# Start the application, listen for HTTP requests on port 5000 by
# default
source .venv/bin/activate

# /!\ Don't run this in the background or the container will exit as
#     soon as the shell command returns
python app.py


