curl "http://localhost:4741/borrowers/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "borrower": {
      "first_name": "'"${FIRST}"'",
      "last_name": "'"${LAST}"'"
    }
  }'

echo
