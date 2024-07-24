  FROM python:3.8-slim

  COPY main.py /main.py

  RUN pip install opentelemetry-api opentelemetry-sdk opentelemetry-exporter-otlp

  ENTRYPOINT ["python", "/main.py"]
