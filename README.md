# conjur-terraform-demo
Demonstration of the use of the Conjur plugin for terraform

## How it works 
1 - The docker-compose file is used to deploy a terraform server.

2 - The conjur plugin for terraform is loaded to the terraform server.

3 - The terraform script (main.tf) is launched and fetch secrets from Conjur. Secrets are displayed in the terraform folder for demo purposes (default name : secrets)

4 - Clean environment 

## Software Prerequisites
Docker should be installed

Docker-compose should be installed

wget should be installed

## Variables to set
Variables should be set in the file vars.sh

## Versions
terraform-provider-conjur : v0.2.0

terraform : 0.11.11 (latest version as for 01/29/2019)



