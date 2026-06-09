variable "ami" {
    default = "ami-0220d79f3f480ecf5"
}

variable "environment" {
    default = "prod"
}

variable "sg_tag" {
    type = map
    default = {
        name = "expense-backend-dev"
    } 
}

variable "cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
}

variable "from_port" {
    type = number
    default = "22"
}

variable "to_port" {
    type = number
    default = "22"
}

variable "ec2_tag" {
    type = map
    default = {
        Project = "expense"
        Component = "backend"
        Environment = "dev"
        Name = "expense-backend-dev"
    }
  
}