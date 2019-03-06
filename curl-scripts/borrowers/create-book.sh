#!/bin/bash

curl "http://localhost:4741/borrowers" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "borrower": {
      "first_name": "'"${FIRST}"'",
      "last_name": "'"${LAST}"'"
    }
  }'

echo
