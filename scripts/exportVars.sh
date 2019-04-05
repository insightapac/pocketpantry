# Get current subscription details
subscriptionId=$(az account show --query 'id' --output tsv)
tenantId=$(az account show --query 'tenantId' --output tsv)

# Export environment variables
export ARM_SUBSCRIPTION_ID=${subscriptionId}
export ARM_TENANT_ID=${tenantId}
export ARM_CLIENT_ID=${servicePrincipalId}
export ARM_CLIENT_SECRET=${servicePrincipalKey}