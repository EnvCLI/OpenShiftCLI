#!/bin/bash
set -e

# make sure the required directory exists
mkdir -p /root/.kube

# authByToken
if [ -n "$OC_TOKEN" ]; then
	oc login $OC_SERVER --token $OC_TOKEN --insecure-skip-tls-verify
fi
# authByUsername
if [ -n "$OC_USERNAME" ]; then
	oc login $OC_SERVER -u $OC_USERNAME -p $OC_PASSWORD --insecure-skip-tls-verify
fi

# real entrypoint
exec "$@"
