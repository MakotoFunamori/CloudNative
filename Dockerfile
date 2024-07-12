FROM python:3.8
LABEL maintainer="Makoto.Funamori"

COPY ./techtrends /app
WORKDIR /app
RUN pip install -r requirements.txt

EXPOSE 3111

CMD [ "python", "app.py" ]
