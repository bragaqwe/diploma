#! /usr/bin/env bash
set -e

python /portal/app/celeryworker_pre_start.py

celery -A app.core.celery_app worker -l INFO
