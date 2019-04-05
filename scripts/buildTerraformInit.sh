# Get Azure account details
echo "==> Setting Subscription environment variables"
if [[ ! -z "${servicePrincipalId:-}" ]]; then
  SUBSCRIPTION_ID=$(az account show --query 'id' --output tsv)
  TENANT_ID=$(az account show --query 'tenantId' --output tsv)
  CLIENT_ID=${servicePrincipalId:-}
  CLIENT_SECRET=${servicePrincipalKey:-}
else
  SUBSCRIPTION_ID=
  TENANT_ID=
  CLIENT_ID=
  CLIENT_SECRET=
fi

# Define environment variables
export ARM_SUBSCRIPTION_ID=${ARM_SUBSCRIPTION_ID:-$SUBSCRIPTION_ID} \
  ARM_TENANT_ID=${ARM_TENANT_ID:-$TENANT_ID} \
  ARM_CLIENT_ID=${ARM_CLIENT_ID:-$CLIENT_ID} \
  ARM_CLIENT_SECRET=${ARM_CLIENT_SECRET:-$CLIENT_SECRET}

# Run Terraform init
terraform init