# docker file 
FROM python:2-alpine

RUN pip install elasticsearch
ADD https://raw.githubusercontent.com/lzbgt/elasticsearch-python/master/remove-indices.py /

ENTRYPOINT ["/usr/local/bin/python", "/remove-indices.py"]
