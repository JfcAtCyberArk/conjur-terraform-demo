#!/bin/bash

docker exec -it terraform /bin/sh -c 'terraform init'
docker exec -it terraform /bin/sh -c 'terraform apply'
