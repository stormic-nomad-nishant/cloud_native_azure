#!/bin/bash

terraform plan -out=myplan > /dev/null
terraform show -json myplan | jq '.planned_values.root_module.resources|.[2].values'

rm -vf myplan