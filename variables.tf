## VPC 

variable "vpc_cidr" {
    default = "10.0.0.0/16"
    description = "VPC_cidr block"
    type = string

  
}

#Presentaton tier CIDR BLOCK 1

variable "public-web-subnet-1-cidr" {
    default = "10.0.1.0/24"
    description = "public_web_subnet1"
    type = string
  
}

#Presentationn tier cidr block 2

variable "public-web-subnet-2-cidr" {
    default = "10.0.2.0/24"
    description = "public_web_subnet2"
    type = string
  
}



#APP TIER CIDR BLOCK 1
variable "private-app-subnet-1-cidr" {
    default = "10.0.3.0/24"
    description = "private_app_subnet1"
    type = string
  
}

#APP TIER CIDR BLOCK 2

variable "private-app-subnet-2-cidr" {
    default = "10.0.4.0/24"
    description = "private_app_subnet2"
    type = string
  
}

#DB CIDR BLOCK 1

variable "private-db-subnet-1-cidr" {
    default = "10.0.5.0/24"
    description = "private_db_subnet1"
    type = string
  
}

#DB CIDR BLOCK 2

variable "private-db-subnet-2-cidr" {
    default = "10.0.6.0/24"
    description = "private_db_subnnet2"
    type = string
  
}

#APP TIER SECURITY GROUP

variable "ssh-locate" {
   default = "192.168.1.0/24"
    description = "ip_address"
    type = string
  
}

#DB INSTANCE

variable "database-instance-class" {
    default = "db.t2.micro"
    description = "The Database Instance Type"
    type = string
  
}

#MULTI AZ

variable "multi-az-deployment" {
    default = true
    description = "Create a Standby DB Instance"
    type = bool
  
}

