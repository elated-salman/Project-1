
#creating route table
resource "aws_route_table" "my_route_table" {
    vpc_id = aws_vpc.my_vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.my_IGW.id
    }
    tags = {
      Name = "Route_to_Internet"
    }
  
}


# associating route table
resource "aws_route_table_association" "rt-1" {
    subnet_id = aws_subnet.my_pub_subnet-1.id
    route_table_id = aws_route_table.my_route_table.id  
}

# associating route table
resource "aws_route_table_association" "rt-2" {
    subnet_id = aws_subnet.my_pub_subnet-2.id
    route_table_id = aws_route_table.my_route_table.id     
}