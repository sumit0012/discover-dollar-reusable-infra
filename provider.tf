terraform {
  required_providers {
    sam = {
      source = "sam/sam"
      version = "~> 2.0"
    }
  }
}

variable "do_token" {}

provider "sam" {
  token = var.do_token
}
