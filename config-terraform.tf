terraform {
  required_providers {
    aci = {
      source = "ciscodevnet/aci"
    }
  }
  required_version = ">= 0.14.6"

  backend "remote" {
    hostname = "app.terraform.io"
    organization = "terraform-cloud-multi-state-demo"

    workspaces {
      name = "application_1"
    }
  }
}
