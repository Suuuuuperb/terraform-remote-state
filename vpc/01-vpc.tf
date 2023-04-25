resource "aws_vpc" "vpc_kthong" {
  cidr_block = "10.0.0.0/16"

  enable_dns_hostnames = true
  enable_dns_support = true

  tags = {
    "Name" = "vpc_kthong"
  }
}

output "output_vpc_kthong" {
  value       = aws_vpc.vpc_kthong
  description = "aws_vpc.vpc_kthong"
}