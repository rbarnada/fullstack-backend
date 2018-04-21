#!/bin/bash

curl "http://localhost:4741/runs/" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "run": {
      "distance": "'"${DISTANCE}"'",
      "time": "'"${TIME}"'"
    }
  }'

echo
