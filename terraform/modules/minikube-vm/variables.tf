variable "resource_group_name" {
  description = "Name of the resource group to create"
  type        = string
}

variable "minikube_script_path" {
  description = "Path to the install-minikube.sh script"
  type        = string
}

variable "ssh_allowed_ip_cidr" {
  description = "The IP range allowed to SSH into the VM"
  type        = string
  default     = "0.0.0.0/0" # ❗ Replace with your real IP CIDR for security
}

variable "create_vm" {
  description = "Whether to create the VM and supporting resources"
  type        = bool
  default     = true
}

variable "create_nsg" {
  description = "Whether to create the VM and supporting resources"
  type        = bool
  default     = true
}

variable "location" {
  description = "Azure region for resource deployment"
  type        = string
  default     = "East US"
}

variable "vm_size" {
  description = "The size of the Virtual Machine"
  type        = string
  default     = "Standard_B2s"
}

variable "admin_username" {
  description = "The admin username for the VM"
  type        = string
  default     = "azureuser"
}

variable "ssh_public_key" {
  description = "The public SSH key used to access the VM"
  type        = string
}

variable "subnet_id" {
  description = "Optional: existing subnet ID to use. If not provided, a new VNet and subnet will be created"
  type        = string
  default     = ""
}

variable "install_minikube" {
  description = "Whether to install Minikube on the VM"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Map of tags to assign to resources"
  type        = map(string)
  default     = {}
}
