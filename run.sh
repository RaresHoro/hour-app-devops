#!/bin/bash
docker build -t hour-app:main .
docker run -p 5000:5000 -e APP_VERSION=main hour-app:main