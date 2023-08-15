#!/bin/bash -x

cd /Users/philiphayes/projects/eap8-workshop/docs
docker run -it -p 8080:8080 --rm -v /Users/philiphayes/projects/eap8-workshop/docs:/app-data:Z \
-e CHE_URL='https://devspaces.apps.cluster-v6k6n.v6k6n.sandbox2818.opentlc.com/' \
-e CHE_USER_PASSWORD='openshift' \
-e CONSOLE_URL='https://console-openshift-console.apps.cluster-29flf.29flf.sandbox2069.opentlc.com' \
-e CONTENT_URL_PREFIX="file:///app-data/" \
-e LOG_TO_STDOUT='true' \
-e MASTER_URL='https://api.cluster-blr-f777.blr-f777.example.opentlc.com:6443' \
-e OPENSHIFT_USER_PASSWORD='openshift' \
-e ROUTE_SUBDOMAIN='apps.cluster-blr-f777.blr-f777.example.opentlc.com' \
-e WORKSHOPS_URLS="file:///app-data/_workshop.yml" \
-e EAP8_VERSION="JBoss EAP 8-Beta" \
-e JBOSS7_ARCHIVE="jboss-eap-7.4.0.zip" \
-e JBOSS7_DIR="jboss-eap-7.4" \
-e JBOSS8_ARCHIVE="jboss-eap-8.0.0.Beta.zip" \
-e JBOSS8_DIR="jboss-eap-8.0" \
-e SERVER_MIGRATION_ARCHIVE="jboss-eap-8.0.0.Beta-server-migration.zip" \
-e SERVER_MIGRATION_DIR="jboss-server-migration" \
-e MTR_ARCHIVE="mtr-1.1.0.GA-web-console.zip" \
-e MTR_DIR="mtr-web-distribution-1.1.0.GA-redhat-00003" \
-e MTR_CLI_ARCHIVE="mtr-1.1.0.GA-cli-offline.zip" \
-e MTR_CLI_DIR="mtr-cli-1.1.0.GA-redhat-00003" \
    quay.io/jamesfalkner/workshopper

