resource "aws_subnet" "private-us-west-2a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "192.168.0.0/24"
  availability_zone = "us-west-2a"

  tags = tomap({
    "Name"                                      = "col-corp-private-us-west-2a",
    "application"                               = var.application,
    "application_owner"                         = var.application_owner,
    "costcenter"                                = var.costcenter,
    "environment"                               = var.environment,
    "kubernetes.io/cluster/${var.cluster_name}" = "shared",
    "kubernetes.io/role/internal-elb"           = "1",
  })
}


resource "aws_subnet" "private-us-west-2b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "192.168.1.0/24"
  availability_zone = "us-west-2b"

  tags = tomap({
    "Name"                                      = "col-corp-private-us-west-2b",
    "application"                               = var.application,
    "application_owner"                         = var.application_owner,
    "costcenter"                                = var.costcenter,
    "environment"                               = var.environment,
    "kubernetes.io/cluster/${var.cluster_name}" = "shared",
    "kubernetes.io/role/internal-elb"           = "1",
  })
}

resource "aws_subnet" "public-us-west-2a" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "192.168.2.0/24"
  availability_zone       = "us-west-2a"
  map_public_ip_on_launch = true

  tags = tomap({
    "Name"                                      = "col-corp-public-us-west-2a",
    "application"                               = var.application,
    "application_owner"                         = var.application_owner,
    "costcenter"                                = var.costcenter,
    "environment"                               = var.environment,
    "kubernetes.io/cluster/${var.cluster_name}" = "shared",
    "kubernetes.io/role/elb"                    = "1",
  })
}

resource "aws_subnet" "public-us-west-2b" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "192.168.3.0/24"
  availability_zone       = "us-west-2b"
  map_public_ip_on_launch = true

  tags = tomap({
    "Name"                                      = "col-corp-public-us-west-2b",
    "application"                               = var.application,
    "application_owner"                         = var.application_owner,
    "costcenter"                                = var.costcenter,
    "environment"                               = var.environment,
    "kubernetes.io/cluster/${var.cluster_name}" = "shared",
    "kubernetes.io/role/elb"                    = "1",
  })
}
