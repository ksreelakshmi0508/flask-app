FROM alpine:3.11
RUN apk add --update python
RUN apk add --update py-pip
COPY ./requirements.txt /app/requirements.txt
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 5000
CMD python app.py
