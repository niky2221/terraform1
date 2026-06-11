variable "ami_id" {
  default = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
  default = "t3.micro"

}

variable "ec2_tag" {
  default = {
    Name = "terraform"
  }

}

variable "instances" {
  default = ["mysql", "backend", "frontend"]
}

variable "zone_id" {
  default = "Z05818272ZT7Y387ZB6VY"

}

variable "domain_name" {
  default = "expense94.online"

}