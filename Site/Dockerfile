FROM ubuntu:latest
WORKDIR /opt/vulnerable/

ENV FLASK_APP=chal.py
ENV FLASK_ENV=development
ENV FLASK_RUN_HOST=0.0.0.0

COPY requirements.txt /opt/vulnerable/

COPY . /opt/vulnerable/

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        build-essential \
        python3-dev \
	    python3-pip 

RUN pip3 install -r requirements.txt

#EXPOSE 8000

CMD ["chmod", "+x", "/opt/vulnerable/docker-entrypoint.sh"]

ENTRYPOINT ["/opt/vulnerable/docker-entrypoint.sh"]
