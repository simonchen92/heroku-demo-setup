curl "http://localhost:4741/authors" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "author": {
      "first_name": "'"${FIRST}"'",
      "last_name": "'"${LAST}"'"
    }
  }'

echo
