FROM python:3.9-alpine

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

ENV APP_HOME=/usr/src/app
RUN mkdir -p $APP_HOME && \
    mkdir $APP_HOME/staticfiles && \
    mkdir $APP_HOME/mediafiles

RUN addgroup -S app && adduser -S app -G app

WORKDIR $APP_HOME

COPY ./Pipfile .
COPY ./Pipfile.lock .
RUN apk update && \
    apk add mariadb-dev gcc python3-dev musl-dev libpq && \
    pip install --upgrade pip && \
    pip install pipenv && \
    pipenv install --dev --system

COPY ./entrypoint.development.sh $APP_HOME

COPY . $APP_HOME

RUN chown -R app:app $APP_HOME

USER app

# ENTRYPOINT ["/usr/src/app/entrypoint.development.sh"]
