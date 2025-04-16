#!/bin/bash
set -e

# Initialize the Superset database
superset db upgrade

# Create an admin user
superset fab create-admin \
    --username admin \
    --firstname Superset \
    --lastname Admin \
    --email admin@superset.com \
    --password admin

# Initialize Superset
superset init

# Start Superset server
gunicorn \
    --workers 3 \
    --bind 0.0.0.0:8088 \
    "superset.app:create_app()"
