module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version

  subnet_ids = var.private_subnets
  vpc_id     = var.vpc_id

  enable_irsa = true

  eks_managed_node_groups = {
    default = {
      desired_size   =1
      min_size       = 1
      max_size       = 1
      instance_types = ["t3.micro"]
      capacity_type  = "ON_DEMAND"
    }
  }
}