# Define required Terraform providers and versions
terraform {
  required_providers {
    vagrant = {
      source  = "bmatcuk/vagrant"
      version = "~> 4.0.0"
    }
  }
}

# Define Vagrant virtual machine resource
resource "vagrant_vm" "vagrantbox" {
  vagrantfile_dir = "../../"
  get_ports = true
}
