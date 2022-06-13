resource "aws_vpc" "main" {
  cidr_block           = "192.168.0.0/16"
  enable_dns_hostnames = true

  tags = tomap({
    "Name"                                      = "col-corp-eks-vpc",
    "kubernetes.io/cluster/${var.cluster_name}" = "shared",
    "application"                               = var.application,
    "application_owner"                         = var.application_owner,
    "costcenter"                                = var.costcenter,
    "environment"                               = var.environment,
  })
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = tomap({
    "Name"                                      = "col-corp-eks-igw",
    "kubernetes.io/cluster/${var.cluster_name}" = "shared",
    "application"                               = var.application,
    "application_owner"                         = var.application_owner,
    "costcenter"                                = var.costcenter,
    "environment"                               = var.environment,
  })
}