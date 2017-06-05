#!/bin/bash

API="http://localhost:4741"
URL_PATH="/change-password"
TOKEN="BAhJIiUwMTBjMmYxYzJkMDg4NDEzMDY2OTdmMjVhMjI3NGRiZAY6BkVG--4c24b0957bbb91b619aa452d33910c6b2c1a8840"
ID="1"
OLDPW="ferrell"
NEWPW="pw"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'

echo
