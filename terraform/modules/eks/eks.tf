module "eks" {
  source = "terraform-aws-modules/eks/aws"
  version = "17.0.0"
  cluster_name = variables.cluster_name
  cluster_version = "1.24"
  subnets = module.vpc.private_subnets
  vpc_id = module.vpc.vpc_id
}
