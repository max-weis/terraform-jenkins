#!/bin/sh

# build jenkins image
packer build -var "linode_api_key=$LINODE_API_KEY" packer/templates/jenkins.json
