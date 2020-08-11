FROM python:3.7-alpine

ENV APP_VOLUME /app

RUN mkdir $APP_VOLUME
COPY ./requirements $APP_VOLUME

WORKDIR $APP_VOLUME
RUN apk update
RUN apk add --no-cache --virtual .build-deps python3-dev gcc musl-dev git
RUN pip install -r $APP_VOLUME/requirements
RUN apk del .build-deps

COPY ./linkcheck.sh ${APP_VOLUME}
RUN chmod +x ${APP_VOLUME}/linkcheck.sh

ARG USER_ID
ARG GROUP_ID

ENTRYPOINT ["/bin/sh", "./linkcheck.sh"]
