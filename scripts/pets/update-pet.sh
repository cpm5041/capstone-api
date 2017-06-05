#!/bin/bash

# API="http://localhost:4741"
# URL_PATH="/pets"
# ID="2"
TOKEN="BAhJIiU1ZWRlZWQ3ZTI5NDUyMWZlODNjYTM4NDhiZTA5NDhkZAY6BkVG--2436ac28a02faca44b4eaf3ac15a8cccfb627b4f"
BREED="Golden Retriever"
SPECIES="Doggo"
NAME="Luceyyyyyy"
BORNON="2017-10-05"
GENDER="Female"
IMAGE="http://cdn2-www.dogtime.com/assets/uploads/gallery/30-impossibly-cute-puppies/impossibly-cute-puppy-8.jpg"


 curl --include --request PATCH http://localhost:4741/pets/2 \
  --header "Content-Type: application/json" \
   --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "pet": {
      "breed": "'"${BREED}"'",
      "species": "'"${SPECIES}"'",
      "name": "'"${NAME}"'",
      "bornOn": "'"${BORNON}"'",
      "gender": "'"${GENDER}"'",
      "image": "'"${IMAGE}"'"
    }
  }'
