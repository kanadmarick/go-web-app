variable "region" {
  default = "us-east-1"
}

variable "vpc_name" {
  default = "my-vpc"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "azs" {
  default = ["us-east-1a", "us-east-1b"]
}

variable "private_subnets" {
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "public_subnets" {
  default = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "cluster_name" {
  default = "my-eks-cluster"
}

variable "cluster_version" {
  default = "1.29"
}

variable "node_desired" {
  default = 2
}

variable "node_min" {
  default = 1
}

variable "node_max" {
  default = 3
}

variable "instance_types" {
  default = ["t3.medium"]
}