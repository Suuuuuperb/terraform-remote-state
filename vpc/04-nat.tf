resource "aws_eip" "nat" {
  vpc = true
  tags = {
    Name = "nat"
  }
}

output "output_aws_eip_kthong" {
  value       = aws_eip.nat
  description = "aws_eip"
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id = aws_subnet.public-ap-southeast-2a.id

  tags = {
    Name = "nat"
  }

  depends_on = [
    aws_internet_gateway.igw
  ]
}

output "output_nat_kthong" {
  value       = aws_nat_gateway.nat
  description = "aws_nat_gateway"
}