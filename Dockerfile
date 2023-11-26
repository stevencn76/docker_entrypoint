FROM ubuntu

RUN apt-get update
RUN apt-get install -y python3.6 python3-pip

COPY requirements.txt .

RUN pip3 install -r requirements.txt

COPY app.py /opt/app.py

ENTRYPOINT python3 /opt/app.py
