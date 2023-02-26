
From python:3.10.6

WORKDIR /WorkFolder

COPY app.py ./app.py
COPY ./model ./model
COPY ./ms ./ms

RUN pip install --upgrade pip
COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python3","app.py"]

