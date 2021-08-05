resource "aws_vpc" "demo-vpc" {
  cidr_block       = var.cidr_block_vpc
  instance_tenancy = "default"
  enable_dns_hostnames = true

  tags = {
    Name = var.vpc_name
  }
}