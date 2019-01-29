#!/bin/bash

. ./vars.sh

sed -e "s~{{ CONJUR_DNS_NAME }}~$conjur_dns_name~g" \
    -e "s~{{ CONJUR_IP }}~$conjur_ip~g" \
    -e "s~{{ CONJUR_ACCOUNT }}~$conjur_account~g" \
    -e "s~{{ CONJUR_AUTHN_LOGIN }}~$conjur_authn_login~g" \
    -e "s~{{ CONJUR_AUTHN_API_KEY }}~$conjur_authn_api_key~g" \
    -e "s~{{ CONJUR_VERSION }}~$conjur_version~g" \
    < docker-compose-template.yml \
    > docker-compose.yml

sed -e "s@{{ CONJUR_SECRET_1 }}@$conjur_secret_1@g" \
    -e "s@{{ CONJUR_SECRET_2 }}@$conjur_secret_2@g" \
    < main-template.tf \
    > terraform/main.tf

docker-compose up -d terraform

openssl s_client -showcerts -connect $conjur_dns_name:443 < /dev/null 2> /dev/null | sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' > conjur.pem
docker cp conjur.pem terraform:/etc/conjur.pem

rm -f conjur.pem
