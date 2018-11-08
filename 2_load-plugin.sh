#!/bin/bash
wget https://github.com/cyberark/terraform-provider-conjur/releases/download/v0.2.0/terraform-provider-conjur-linux-amd64.tar.gz
tar -xvf terraform-provider-conjur*.tar.gz
mv terraform-provider-conjur ./terraform
rm -f terraform-provider-conjur-linux-amd64.tar.gz
docker exec -it terraform /bin/sh -c 'mkdir -p ~/.terraform.d/plugins/'
docker exec -it terraform /bin/sh -c 'cp terraform-provider-conjur ~/.terraform.d/plugins'
