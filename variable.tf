# defining cidr block for vpc
variable "vpc-cidr" {
  default = "10.0.0.0/16"
}

# defining cidr block for 1st subnet for web
variable "websub-1" {
    default = "10.0.0.0/21"  
}


# defining cidr block for 2st subnet for web
variable "websub-2" {
    default = "10.0.8.0/21" 
}


# defining cidr block for 1st subnet for app
variable "appsub-1" {
    default = "10.0.16.0/20"  
}


# defining cidr block for 2st subnet for app
variable "appsub-2" {
    default = "10.0.32.0/19"  
}


# defining cidr block for 1st subnet for dbsub
variable "dbsub-1" {
    default = "10.0.64.0/18"  
}

# defining cidr block for 2st subnet dbsub
variable "dbsub-2" {
    default = "10.0.128.0/17"  
}
