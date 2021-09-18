#!/bin/bash
echo "Starting Vulnerable App"
exec gunicorn 'app:app' \
    --bind '0.0.0.0:8000' \
    --workers 5 \