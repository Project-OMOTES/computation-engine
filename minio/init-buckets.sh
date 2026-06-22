#!/usr/bin/env bash

set -e

MINIO_USER="${MINIO_ROOT_USER}"
MINIO_PASS="${MINIO_ROOT_PASSWORD}"

MINIO_BUCKETS="${MINIO_BUCKETS}" # comma-separated list
# split comma-separated list into array
IFS=',' read -r -a buckets <<< "$MINIO_BUCKETS"

mc alias set minio http://minio:9000 "$MINIO_USER" "$MINIO_PASS"

for bucket in "${buckets[@]}"; do
  if mc ls minio/$bucket > /dev/null 2>&1; then
    echo "Bucket already exists: 'minio/$bucket'"
  else
    mc mb minio/$bucket
  fi
done
