provider "aws" {
  region = var.region
}

module "vpc" {
  source = "./modules/vpc.tf"
}

module "eks" {
  source = "./modules/eks.tf"
}
