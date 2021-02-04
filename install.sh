# Installation of the test app

APP_VERSION=$1
APP_LIFESPAN=$2

export FC_APP_VERSION="${APP_VERSION}"
export FC_APP_LIFESPAN="${APP_LIFESPAN}"

apt-get update
apt-get -qq install --yes --no-install-recommends python3-pip

pip3 install virtualenv

virtualenv .venv -p /usr/bin/python3
source .venv/bin/activate
pip install -r requirements.txt config --global http.sslVerify false 

