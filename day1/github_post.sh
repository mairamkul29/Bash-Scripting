#!/bin/bash

read -p "name your repository: " repo_name

  response="$(curl -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $GITHUB_TOKEN" \
  https://api.github.com/user/repos \
  -d '{"name" : "'"$repo_name"'", "description" : "My repo created with api"}')"

echo $reponse

echo "Here is some information about tge repo:"
echo "Avatar url: $(echo $reponse | jq -r .owner.avatar_url)"
echo "Owner: $(echo $response | jq -r .owner.login)"
echo "Github Url: $(echo $response | jq -r .owner.html_url)"

