API="http://localhost:4741"
URL_PATH="/pets/"
TOKEN="BAhJIiU1ZWRlZWQ3ZTI5NDUyMWZlODNjYTM4NDhiZTA5NDhkZAY6BkVG--2436ac28a02faca44b4eaf3ac15a8cccfb627b4f"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --header "Authorization: Token token=${TOKEN}" \
  --request GET

echo
