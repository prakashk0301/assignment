variable "aws_vpc" {
    description = "VPC"
    default = "vpc-0e8467f076fa127e9"
}

variable "aws_subnet" {
    description = "aws subnet1a"
    default = "subnet-0325154992ec9b4c5"
}

variable "aws_subnet2" {
    description = "aws subnet1b"
    default = "subnet-0fc8213f59cffd5fd"
}

variable "aws_key" {
    description = "aws key"
    default = "aws-frankfurt"
}

 variable "aws_ami" {
     description = "ami id"
     default = "ami-09439f09c55136ecf"
}

 variable "instance_type" {
     description = "instance_type"
     default = "t2.micro"
}

 variable "instance_class" {
     description = "instance_class"
     default = "db.t2.micro"
}
