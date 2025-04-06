if [ "$CODER" = "true" ]; then
  alias gh='GITHUB_TOKEN=$(coder external-auth access-token github) gh'
fi
