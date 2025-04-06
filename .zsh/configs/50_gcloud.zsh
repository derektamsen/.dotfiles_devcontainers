if [ -d "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin" ]; then
  export PATH="/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin":$PATH
fi

if [ -f "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc" ]; then
  source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"
fi

# enable the gcloud auth kubectl gke plugin if it is in PATH
type gke-gcloud-auth-plugin > /dev/null 2>&1 && export USE_GKE_GCLOUD_AUTH_PLUGIN=True

# enable gcloud sdk to use python site packages
# needed for numby to increase iap tcp tunneling performance
# https://cloud.google.com/iap/docs/using-tcp-forwarding#increasing_the_tcp_upload_bandwidth
export CLOUDSDK_PYTHON_SITEPACKAGES=1
