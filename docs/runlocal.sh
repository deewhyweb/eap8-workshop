#!/bin/bash -x

cd /Users/philiphayes/projects/eap8-workshop/docs
docker run -it -p 8080:8080 --rm -v /Users/philiphayes/projects/eap8-workshop/docs:/app-data:Z \
-e CHE_URL='https://devspaces.apps.cluster-v6k6n.v6k6n.sandbox2818.opentlc.com/' \
-e CHE_USER_PASSWORD='openshift' \
-e CONSOLE_URL='https://console-openshift-console.apps.cluster-29flf.29flf.sandbox2069.opentlc.com' \
-e CONTENT_URL_PREFIX="file:///app-data/" \
-e KEYCLOAK_URL='http://keycloak-codeready.apps.cluster-blr-f777.blr-f777.example.opentlc.com' \
-e LOG_TO_STDOUT='true' \
-e MASTER_URL='https://api.cluster-blr-f777.blr-f777.example.opentlc.com:6443' \
-e OPENSHIFT_USER_PASSWORD='openshift' \
-e ROUTE_SUBDOMAIN='apps.cluster-blr-f777.blr-f777.example.opentlc.com' \
-e WORKSHOPS_URLS="file:///app-data/_workshop.yml" \
    quay.io/jamesfalkner/workshopper

