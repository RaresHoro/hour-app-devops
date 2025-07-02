#!/bin/bash
docker build -t hour-app:dev .
docker run -p 5000:5000 -e APP_VERSION=dev hour-app:dev
