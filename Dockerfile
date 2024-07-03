# FROM docker.io/mrjogo/scrapy
# FROM tarhan/scrapy-base

# FROM python:3.6
# ENV PATH /usr/local/bin:$PATH
# ENV PATH /home:$PATH
# ADD . /home
# WORKDIR /home
# RUN python -m pip install --upgrade pip &&pip install -i https://mirrors.aliyun.com/pypi/simple -r requirements.txt
# CMD python ipproxytool.py

FROM python:3.6-slim
ENV PATH /usr/local/bin:$PATH
ENV PATH /home:$PATH
ADD . /home
WORKDIR /home
RUN apt update && apt install gcc -y
RUN python -m pip install --upgrade pip &&pip install -i https://mirrors.aliyun.com/pypi/simple -r requirements.txt
CMD python ipproxytool.py
