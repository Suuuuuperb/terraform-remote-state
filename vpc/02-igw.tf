resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc_kthong.id

  tags = {
    "Name" = "igw"
  }
}

output "output_igw_kthong" {
  value       = aws_internet_gateway.igw
  description = "aws_internet_gateway.igw"
}