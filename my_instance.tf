# instance 1
resource "aws_instance" "project_instance-1" {
    ami = "ami-02396cdd13e9a1257"
    instance_type = "t2.micro"
    key_name = "key"
    vpc_security_group_ids = [aws_security_group.my_security_group.id]
    subnet_id = aws_subnet.my_pub_subnet-1.id
    associate_public_ip_address = true
    user_data = "${file("data.sh")}"
    
    tags = {
        Name = "My_Public_Instance-1"
    }
    
}


# instance 2
resource "aws_instance" "project_instance-2" {
    ami = "ami-02396cdd13e9a1257"
    instance_type = "t2.micro"
    key_name = "key"
    vpc_security_group_ids = [aws_security_group.my_security_group.id]
    subnet_id = aws_subnet.my_pub_subnet-2.id
    associate_public_ip_address = true
    user_data = "${file("data.sh")}"
    tags = {
        Name = "My_Public_Instance-2"
    }
    
}