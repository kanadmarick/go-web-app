module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "3.0.0"
  name = "eks-vpc"
  cidr = "10.0.0.0/16"
  azs = ["us-east-1a", "us-east-1b"]
  public_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets = ["10.0.3.0/24", "10.0.4.0/24"]
}
# Output the VPC ID
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

# Additional useful outputs
output "private_subnet_ids" {
  description = "List of IDs of private subnets"
  value       = module.vpc.private_subnets
}