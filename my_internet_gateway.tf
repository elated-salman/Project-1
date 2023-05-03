resource "aws_internet_gateway" "my_IGW" {
vpc_id = aws_vpc.my_vpc.id
}