#!/bin/bash

repo_name=$(curl --request GET -H "Accept: application/vnd.github+json" https://api.github.com/repos/mairamkul29)

token=""

num_repos="$(curl -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $token"\
  https://api.github.com/users/mairamkul29/repos  |  jq length)"


echo $num_repos

all_repos="$(curl -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $token"\
  https://api.github.com/users/mairamkul29/repos)"

if [ "$num_repos" -le 1 ]; then
  echo "You only have $num_repos"
else

    for repo in $(seq 0 $num_repos); do
    echo $all_repos | jq -r ".[$repo].name"
    done
fi










# if [ "$num_repos" -le 1 ]; then
#     echo "You only have $num_repos" 
# else
#     for repo in $(curl -H "Accept: application/vnd.github+json" \
#   -H "Authorization: Bearer $token\
#   https://api.github.com/users/mairamkul29/repos)"; do
#   repo_name="$("repo" | jq -r .name)
#   echo $repo_name
#   if [ "$repo_name" == "] 
#   $repo | jq -r .name
#   done
# fi