provider "google" {
  project = "gcptf-sample"
  region  = "us-central1"
  zone    = "us-central1-c"
}

module "vpc" {
  source = "./modules/vpc"
}

module "instance" {
  source      = "./modules/instance"
  vm_name     = "terraform-instance2"
  machine_type = "e2-medium"
  zone        = "us-central1-c"
  network_id  = module.vpc.network_id
}

module "firewall" {
  source     = "./modules/firewall"
  network_id = module.vpc.network_id
}

output "vm_external_ip" {
  description = "The external IP of the VM"
  value       = module.instance.vm_external_ip
}
