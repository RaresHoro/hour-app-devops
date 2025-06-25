#!/bin/bash
docker build -t hour-app:test .
docker run -p 5000:5000 -e APP_VERSION=dev hour-app:test