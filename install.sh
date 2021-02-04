# Installation of the test app

APP_VERSION=$1
APP_LIFESPAN=$2

export FC_APP_VERSION="${APP_VERSION}"
export FC_APP_LIFESPAN="${APP_LIFESPAN}"

apt-get update
apt-get -qq install --yes --no-install-recommends python3-pip

pip3 --trusted-host pypi.python.org --trusted-host files.pythonhosted.org install virtualenv

virtualenv .venv -p /usr/bin/python3
source .venv/bin/activate
pip3 install --trusted-host pypi.python.org --trusted-host files.pythonhosted.org -r requirements.txt

