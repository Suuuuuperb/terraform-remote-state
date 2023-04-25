resource "aws_subnet" "private-ap-southeast-2a" {
  vpc_id = aws_vpc.vpc_kthong.id
  cidr_block = "10.0.0.0/19"
  availability_zone = "ap-southeast-2a"

  tags = {
    "Name" = "private-ap-southeast-2a"
  }
}

output "output_aws_subnet_private_2a_kthong" {
  value       = aws_subnet.private-ap-southeast-2a
  description = "aws_subnet.private-ap-southeast-2a"
}

resource "aws_subnet" "private-ap-southeast-2b" {
  vpc_id = aws_vpc.vpc_kthong.id
  cidr_block = "10.0.32.0/19"
  availability_zone = "ap-southeast-2b"

  tags = {
    "Name" = "private-ap-southeast-2b"
  }
}

output "output_aws_subnet_private_2b_kthong" {
  value       = aws_subnet.private-ap-southeast-2b
  description = "private-ap-southeast-2b"
}

resource "aws_subnet" "public-ap-southeast-2a" {
    vpc_id = aws_vpc.vpc_kthong.id
    cidr_block = "10.0.64.0/19"
    availability_zone = "ap-southeast-2a"
    map_public_ip_on_launch = true

    tags = {
        "Name" = "public-ap-southeast-2a"
    }
}

output "output_aws_subnet_public_2a_kthong" {
  value       = aws_subnet.public-ap-southeast-2a
  description = "public-ap-southeast-2a"
}

resource "aws_subnet" "public-ap-southeast-2b" {
    vpc_id = aws_vpc.vpc_kthong.id
    cidr_block = "10.0.96.0/19"
    availability_zone = "ap-southeast-2b"
    map_public_ip_on_launch = true

    tags = {
        "Name" = "public-ap-southeast-2b"
    }
}

output "output_aws_subnet_public_2b_kthong" {
  value       = aws_subnet.public-ap-southeast-2b
  description = "public-ap-southeast-2b"
}