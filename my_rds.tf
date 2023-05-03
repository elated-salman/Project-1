resource "aws_db_subnet_group" "default" {
    name = "main"
    subnet_ids = [aws_subnet.my_database_subnet-1.id, aws_subnet.my_database_subnet-2.id]  
  tags = {
        Name = "My_Database_Sub_G"
    }
}
  

# creating RDS instance
resource "aws_db_instance" "default" {
    allocated_storage = 10
    my_db = "mydb"
    db_subnet_group_name = aws_db_subnet_group.default.id
    engine = "mysql"
    engine_version = "5.7"
    instance_class = "db.t2.micro"
    multi_az = true
    username = "mydatabaseu"
    password = "username"
    parameter_group_name   = "default.mysql5.7"
    skip_final_snapshot = true 
    vpc_security_group_ids = [aws_security_groups.my_database_sg.id] 
}
