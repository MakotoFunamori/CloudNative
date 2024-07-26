FROM python:3.8
LABEL maintainer="Makoto.Funamori"

COPY ./techtrends /app
WORKDIR /app
RUN pip install -r requirements.txt
RUN python init_db.py

EXPOSE 7111

CMD [ "python", "app.py" ]