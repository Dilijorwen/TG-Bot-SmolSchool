FROM python:3.12

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install --upgrade setuptools

RUN pip install -r requirements.txt

RUN chmod 755 .

COPY . .

CMD ["python", "bot/bot.py"]