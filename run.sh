#!/bin/sh

set -e

if [ -z $FILE_DIR ]; then
  echo >&2 "FILE_DIR must be set"
  exit 1
fi

# if [ -z $AWS_BUCKET ]; then
#   echo >&2 "AWS_BUCKET must be set"
#   exit 1
# fi

# if [ -z $AWS_ACCESS_KEY_ID ]; then
#   echo >&2 "AWS_ACCESS_KEY_ID must be set"
#   exit 1
# fi

# if [ -z $AWS_SECRET_ACCESS_KEY ]; then
#   echo >&2 "AWS_SECRET_ACCESS_KEY must be set"
#   exit 1
# fi

mkdir -p $FILE_DIR && mlflow server \
    --backend-store-uri ${FILE_DIR} \
    --default-artifact-root ${FILE_DIR} \
    --host 0.0.0.0 \
    --port $PORT