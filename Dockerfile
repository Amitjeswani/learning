FROM python:3.11
WORKDIR /python-docker
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
RUN set FLASK_ENV=development
RUN FLASK_APP=app.py
EXPOSE 8082
COPY . .

CMD [ "flask", "run" ]