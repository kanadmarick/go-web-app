module "vpc" {
  source         = "./modules/vpc"
  region         = var.region
  vpc_name       = var.vpc_name
  vpc_cidr       = var.vpc_cidr
  azs            = var.azs
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets
}

module "eks" {
  source         = "./modules/eks"
  region         = var.region
  cluster_name   = var.cluster_name
  cluster_version = var.cluster_version
  vpc_id         = module.vpc.vpc_id
  private_subnets = module.vpc.private_subnets
  node_desired   = var.node_desired
  node_min       = var.node_min
  node_max       = var.node_max
  instance_types = var.instance_types
}