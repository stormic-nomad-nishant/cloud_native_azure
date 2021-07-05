#!/bin/bash

terraform plan -out=myplan > /dev/null
terraform show -json myplan | jq '.planned_values.root_module.resources|.[0]'

rm -vf myplan