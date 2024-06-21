terraform {
  required_version = ">= 0.13"

  required_providers {
    aws        = "~> 5.40.0"
    helm       = ">= 1.0, < 3.1"
    kubernetes = ">= 1.10.0, < 3.0.0"
  }
}
