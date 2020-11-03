# Installation of the test app

APP_VERSION=$1
APP_LIFESPAN=$2

export FC_APP_VERSION="${APP_VERSION}"
export FC_APP_LIFESPAN="${APP_LIFESPAN}"

apt-get update
apt-get install --yes git python3-pip python3-virtualenv


# fetch the sources
git clone https://github.com/fchauvel/test-app.git

cd test-app

virtualenv .venv -p /usr/bin/python3

source .venv/bin/activate

pip3 install -r requirements.txt

