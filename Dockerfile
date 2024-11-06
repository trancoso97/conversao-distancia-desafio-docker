FROM python:3.9.20

WORKDIR /app

COPY requirements.txt /app/

RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

CMD [ "gunicorn", "--bind", "0.0.0.0:5000", "app:app" ]