#! /bin/sh
set -euxo pipefail

gcloud auth activate-service-account --key-file="${GOOGLE_CREDENTIALS}" \
	&& gcloud config set project "${GOOGLE_PROJECT}"

exec "$@"