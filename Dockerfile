FROM apache/superset:latest

USER root
RUN pip install --no-cache-dir --upgrade pip

COPY docker-entrypoint.sh /app/docker-entrypoint.sh
COPY superset_config.py /app/superset_config.py  # Add this line

RUN chmod +x /app/docker-entrypoint.sh

ENTRYPOINT ["/app/docker-entrypoint.sh"]
