# subnet1 for web
resource "aws_subnet" "my_pub_subnet-1" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = "${var.websub-1}"
    map_public_ip_on_launch = "true"
    availability_zone = "us-east-1a"    
    tags = {
        Name =  "Web_subnet_1"
    }
}

# subnet2 for web 
resource "aws_subnet" "my_pub_subnet-2" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = "${var.websub-2}"
    map_public_ip_on_launch = "true"
    availability_zone = "us-east-1b"    
    tags = {
        Name =  "Web_subnet_2"
    }
}


# subnet1 for Application 
resource "aws_subnet" "my_application_subnet-1" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = "${var.appsub-1}"
    map_public_ip_on_launch = "false"
    availability_zone = "us-east-1a"    
    tags = {
        Name =  "Application_subnet_1"
    }
}


# subnet2 for Application 
resource "aws_subnet" "my_application_subnet-2" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = "${var.appsub-2}"
    map_public_ip_on_launch = "false"
    availability_zone = "us-east-1b"    
    tags = {
        Name =  "Application_subnet_2"
    }
}




# subnet1 for Private Database 
resource "aws_subnet" "my_database_subnet-1" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = "${var.dbsub-1}"
    availability_zone = "us-east-1a"    
    tags = {
        Name =  "Private_Database_subnet_1"
    }
}



# subnet2 for Private Database 
resource "aws_subnet" "my_database_subnet-2" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = "${var.dbsub-2}"
    availability_zone = "us-east-1b"    
    tags = {
        Name =  "Private_Database_subnet_2"
    }
}