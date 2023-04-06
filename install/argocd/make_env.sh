#! /bin/sh

cat << EOF > argocd-vault-plugin-credentials.env
AVP_TYPE=azurekeyvault
AZURE_TENANT_ID=${AZURE_TENANT_ID}
AZURE_CLIENT_ID=${AZURE_CLIENT_ID}
AZURE_CLIENT_SECRET=${AZURE_CLIENT_SECRET}
EOF