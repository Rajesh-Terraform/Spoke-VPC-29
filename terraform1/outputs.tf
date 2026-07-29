output "vpc_id" {
  value = aws_vpc.spoke.id
}

output "private_subnet1" {
  value = aws_subnet.private1.id
}

