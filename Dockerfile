# Docker image for barcode-forwarder

FROM python:3.8

WORKDIR /app

COPY . .

RUN pip install --upgrade pip
RUN pip install pipenv
RUN pipenv install --system --deploy

CMD [ "python", "./barcode_forwarder/main.py" ]