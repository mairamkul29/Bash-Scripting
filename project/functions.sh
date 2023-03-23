#!/bin/bash

# ## bash function syntax:
# function_name {
#     commands
# }

function get_droplets {
do_droplet="$(curl -X GET \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $DO_TOKEN" \
  "https://api.digitalocean.com/v2/droplets")"

 num_of_droplets=$(echo $do_droplet | jq .droplets | jq length)
 echo $num_of_droplets
}

test=$(get_droplets)

