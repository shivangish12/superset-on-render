FROM apache/superset:latest

USER root
RUN pip install --upgrade pip

# You can add any custom dependencies here
# RUN pip install some-package

USER superset
