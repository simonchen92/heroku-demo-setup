curl "http://localhost:4741/doctors/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "doctor": {
      "first_name": "'"${FIRST}"'",
      "last_name": "'"${LAST}"'",
      "diagnosis": "'"${DIAGNOSIS}"'",
      "born_on": "'"${BORN}"'"
    }
  }'

echo
