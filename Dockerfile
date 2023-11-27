FROM ubuntu

RUN apt-get update
RUN apt-get install -y python3.6 python3-pip

COPY requirements.txt .

RUN pip3 install -r requirements.txt

COPY app.py /opt/app.py

WORKDIR /opt/

ENTRYPOINT ["python3", "app.py", "p1", "p2"]
#CMD ["python3", "app.py", "p1", "p2"]

