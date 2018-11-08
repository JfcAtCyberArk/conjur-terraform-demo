# conjur-terraform-demo
Demonstration of the use of the Conjur plugin for terraform

## How it works 
#### 1 - docker-compose file is used to run a terraform server.
#### 2 - The conjur plugin for terraform is loaded to the terraform server.
#### 3 - The terraform script (main.tf) is launched and fetchs a secret from Conjur. The secret is displayed in the terraform folder for demo purposes (default name : dbpass)
#### 4 - Clean environment 

## Software Prerequisites
Docker should be installed

Docker-compose should be installed

wget should be installed

## Variables to set
Variables section of script 1 should be set.

## Versions
terraform-provider-conjur : v0.2.0

terraform : 0.11.7



