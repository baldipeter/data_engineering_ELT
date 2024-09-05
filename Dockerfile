FROM apache/airflow:2.10.0-python3.11

USER airflow

RUN pip install apache-airflow-providers-docker

USER root