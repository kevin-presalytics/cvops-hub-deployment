To install on microk8s:

```bash
sudo snap install microk8s --classsic
microk8s enable dns
microk8s enable hostpath-storage
microk8s enable registry
```

To install ArgoCD with vault plugin (assumes microk8s cluster):

```bash
# Tenant ID of Azure Active Directory container 
export AZURE_TENANT_ID=<azure-tenant-id>

# Client ID of Azure Service Principal
export AZURE_CLIENT_ID=<azure-client_id>

# Client secret of Azure service Principal
export AZURE_CLIENT_SECRET=<azure-client-secret>

# Generates an env file
./make-env.sh

# Installs ArgoCD w/ vault plugin
microk8s kubectl apply -k .
```