#!/bin/bash
docker-compose down
rm -f terraform/terraform-provider-conjur
rm -f docker-compose.yml
rm -f terraform/dbpass
rm -f terraform/main.tf
