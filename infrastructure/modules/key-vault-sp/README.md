# Terraform module: key-vault-sp
This Terraform module is used to create an Azure Key Vault with two access policies:
- Full access for the service principal used to deploy the Vault
- Full access for a single object from Azure Active Directory (e.g. user or security group)