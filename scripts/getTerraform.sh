# Install dependencies
sudo apt-get install unzip wget jq

# Get latest Terraform version
uri='https://api.github.com/repos/hashicorp/terraform/releases/latest'
result=$(curl $uri)
version=$(echo $result |  jq -r '.tag_name' | tr -d v)

# Download latest Terraform version
wget https://releases.hashicorp.com/terraform/$(echo $version)/terraform_$(echo $version)_linux_amd64.zip

# Install latest Terraform version
unzip terraform_$(echo $version)_linux_amd64.zip
sudo mv terraform /usr/local/bin/
terraform version
rm -f terraform_$(echo $version)_linux_amd64.zip --verbose