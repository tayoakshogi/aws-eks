resource "aws_eip" "nat" {
  vpc = true

  tags = tomap({
    "Name"              = "col-corp-nat",
    "application"       = var.application,
    "application_owner" = var.application_owner,
    "costcenter"        = var.costcenter,
    "environment"       = var.environment,
  })
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public-us-west-2a.id

  tags = tomap({
    "Name"              = "col-corp-nat",
    "application"       = var.application,
    "application_owner" = var.application_owner,
    "costcenter"        = var.costcenter,
    "environment"       = var.environment,
  })

  depends_on = [aws_internet_gateway.igw]
}
