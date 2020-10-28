FROM python:3.8-buster

ARG APP_VERSION=1.0
ARG APP_LIFESPAN=
ENV FC_APP_VERSION=${APP_VERSION}
ENV FC_APP_LIFESPAN=${APP_LIFESPAN}

RUN apt-get --yes  update 

WORKDIR ./enact

COPY ./requirements.txt ./requirements.txt
COPY ./app.py ./app.py
COPY .pip /root/.pip

RUN pip install -r requirements.txt

CMD python app.py
