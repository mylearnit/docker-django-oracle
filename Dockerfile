FROM python:3.9.18-slim
WORKDIR /code
RUN apt-get update -qq && apt-get -y install alien wget libaio1
RUN wget http://yum.oracle.com/repo/OracleLinux/OL7/oracle/instantclient/x86_64/getPackage/oracle-instantclient19.3-basic-19.3.0.0.0-1.x86_64.rpm
RUN alien -i oracle-instantclient19.3-basic-19.3.0.0.0-1.x86_64.rpm
ENV LD_LIBRARY_PATH=/usr/lib/oracle/19.3/client64/lib/${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/