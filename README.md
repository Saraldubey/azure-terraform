# Azure Terraform Project

This Terraform configuration provisions an Azure infrastructure with the following components:

## Resources

- **Resource Group**: Container for all Azure resources
- **Storage Account**: Blob storage for data persistence
- **Virtual Network**: Network infrastructure with a custom address space
- **Subnet**: Isolated network segment
- **Public IP**: Static IP for VM access
- **Network Security Group**: Firewall rules for inbound/outbound traffic
- **Network Interface**: NIC for the VM
- **Linux Virtual Machine**: Ubuntu Server instance

## Prerequisites

1. **Terraform**: Version 1.0 or later
2. **Azure CLI**: Installed and authenticated

   ```bash
   az login
   ```

3. **SSH Key**: Generate a public/private key pair

   ```bash
   ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa
   ```

## Project Structure

```text
├── providers.tf              # Root provider configuration
├── variables.tf              # Root variable definitions (legacy placeholder)
├── terraform.tfvars          # Root tfvars sample
├── main.tf                   # Root placeholder
├── outputs.tf                # Root placeholder
├── modules/                  # Reusable Terraform modules
│   ├── linux_vm/
│   ├── network/
│   ├── resource_group/
│   └── storage_account/
├── environments/            # Environment-specific deployments
│   ├── dev/
│   ├── test/
│   ├── stage/
│   └── production/
├── .gitignore                # Git ignore rules
└── README.md                 # This file
```

## Usage

Use the environment folders to deploy each target environment.

### 1. Initialize Terraform for an environment

```bash
cd environments/dev
terraform init
```

### 2. Validate Configuration

```bash
terraform validate
```

### 3. Plan Deployment

```bash
terraform plan -out=tfplan
```

### 4. Apply Configuration

```bash
terraform apply tfplan
```

### 5. View Outputs

```bash
terraform output
```

### 6. Destroy Resources

```bash
terraform destroy
```

## Variables

Key variables can be customized in `terraform.tfvars`:

| Variable | Description | Default |
| ---------- | ------------- | --------- |
| `resource_group_name` | Azure Resource Group name | example-resources |
| `location` | Azure region | East US |
| `storage_account_name` | Storage account name (must be globally unique) | examplestorageacct |
| `vm_name` | Virtual machine name | example-machine |
| `vm_size` | VM instance type | Standard_F2 |
| `admin_username` | VM admin user | adminuser |
| `ssh_public_key_path` | Path to SSH public key | ~/.ssh/id_rsa.pub |
| `tags` | Resource tags | Environment=Development |

## Outputs

After deployment, the following outputs are available:

- `resource_group_id`: Azure Resource Group ID
- `storage_account_name`: Storage account name
- `storage_primary_blob_endpoint`: Blob storage endpoint
- `vm_id`: Virtual machine resource ID
- `vm_name`: Virtual machine name
- `vm_public_ip_address`: Public IP address for SSH access
- `network_interface_private_ip`: Private IP of the network interface

## Security Notes

⚠️ **Important**:

- The Network Security Group currently allows SSH from any source (`0.0.0.0/0`). Restrict this to your specific IP in production.
- Store the `terraform.tfvars` file securely and do not commit it to version control if it contains sensitive values.
- Use `terraform.tfvars.local` for local overrides (ignored by git).

## SSH Access

Once deployed, you can SSH into the VM:

```bash
ssh adminuser@<vm_public_ip_address>
```

Get the public IP:

```bash
terraform output vm_public_ip_address
```

## Cost Estimation

To estimate costs before deployment:

```bash
terraform plan -out=tfplan
# Review the plan carefully
```

## Troubleshooting

**SSH Key Not Found**:

```bash
# Ensure your SSH key exists
ls ~/.ssh/id_rsa.pub
```

**Storage Account Name Conflict**:

- Storage account names must be globally unique and 3-24 characters (lowercase alphanumeric only)
- Modify `storage_account_name` in `terraform.tfvars`

**Azure Authentication Failed**:

```bash
az login
az account show
```

## Next Steps

1. Customize variables in `terraform.tfvars` as needed
2. Run `terraform plan` to review changes
3. Run `terraform apply` to create resources
4. Monitor resource creation in Azure Portal

## Cleanup

To remove all resources:

```bash
terraform destroy
```

Confirm when prompted. This will delete all Azure resources managed by this configuration.
