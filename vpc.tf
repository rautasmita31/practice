resource "aws_vpc" "myvpc" {
  cidr_block = "10.10.0.0/16"
}
resource "aws_subnet" "subnet2" {
  vpc_id = aws_vpc.myvpc.id
  cidr_block = "10.10.2.0/24"
}
resource "aws_subnet" "subnet1" {
  vpc_id = aws_vpc.myvpc.id
  cidr_block = "10.10.1.0/24"
}
