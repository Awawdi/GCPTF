variable "vm_name" {
  description = "The name of the VM instance"
  type        = string
  default     = "terraform-instance2"
}

variable "machine_type" {
  description = "The machine type for the VM"
  type        = string
  default     = "e2-medium"
}

variable "zone" {
  description = "The zone to deploy the VM"
  type        = string
  default     = "us-central1-c"
}

variable "network_id" {
  description = "The network ID to associate with the VM"
  type        = string
}
