# decode a base64 encoded jwt and pretty print it
decodejwt () {
  echo "${@}" | jq -R 'split(".") | .[1] | @base64d | fromjson'
}
