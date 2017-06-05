#!/bin/bash

API="http://localhost:4741"
URL_PATH="/sign-out"
TOKEN="BAhJIiUwMTBjMmYxYzJkMDg4NDEzMDY2OTdmMjVhMjI3NGRiZAY6BkVG--4c24b0957bbb91b619aa452d33910c6b2c1a8840"
ID="1"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
