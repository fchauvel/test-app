# Installation of the test app

APP_VERSION=$1
APP_LIFESPAN=$2

export FC_APP_VERSION="${APP_VERSION}"
export FC_APP_LIFESPAN="${APP_LIFESPAN}"

# fetch the sources
git clone https://github.com/fchauvel/test-app.git

cd test-app

virtualenv .venv
source .venv/Scripts/activate

pip install -r requirements.txt

#python app.py
