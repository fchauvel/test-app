# Installation of the test app

APP_VERSION=$1
APP_LIFESPAN=$2

export FC_APP_VERSION="${APP_VERSION}"
export FC_APP_LIFESPAN="${APP_LIFESPAN}"

apt-get update
apt-get install --yes python3-pip python3-virtualenv

virtualenv .venv -p /usr/bin/python3
source .venv/bin/activate
pip install -r requirements.txt

