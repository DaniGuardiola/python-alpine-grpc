FROM python:3.7.2-alpine

RUN apk add --no-cache --virtual .build-deps gcc build-base
RUN pip install grpcio grpcio-tools
RUN apk del .build-deps gcc build-base

CMD ["python3"]