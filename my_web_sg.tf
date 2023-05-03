# Creating Security Group
resource "aws_security_group" "my_security_group" {
    vpc_id = aws_vpc.my_vpc.id      


# inbound rules
# http access from anywhere
ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_block = "0.0.0.0/0"
}


# inbound rules
# http access from anywhere
ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_block = ["0.0.0.0/0"]    
}


# inbound rules
# ssh access from anywhere
ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_block = ["0.0.0.0/0"]    
}

# outbound rules
# internet access to anywhere
ingress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_block = ["0.0.0.0/0"]
}

    tags = {
        Name = "Web_SG"
    }
}