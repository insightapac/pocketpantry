# Get Azure account details
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

# Define variables for customer name
CUSTOMER_NAME=$1
CUSTOMER_NAME_SHORT=$2
AZURE_REGION_PRIMARY=$3
AZURE_REGION_SECONDARY=$4

CUSTOMER_NAME_TRIM="$(echo -e "${CUSTOMER_NAME}" | tr -d '[:space:]')"
CUSTOMER_NAME_LOWER=${CUSTOMER_NAME_TRIM,,}

export TF_VAR_customer_name=${CUSTOMER_NAME}
export TF_VAR_customer_short_name=${CUSTOMER_NAME_SHORT}
export TF_VAR_primary_region=${AZURE_REGION_PRIMARY}
export TF_VAR_secondary_region=${AZURE_REGION_SECONDARY}

# Run Terraform init
terraform apply -auto-approve