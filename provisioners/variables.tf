variable "ingress_ports" {
    default = [
        {
            from_port = 22
            to_port = 22
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
        },
        {
            from_port = 8080
            to_port = 8080
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
        },
        {
            from_port = 80
            to_port = 80
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
        }
        
    ]
}

# variable "zone_id" {
#     default = "Z05818272ZT7Y387ZB6VY"
  
# }

# variable "domain_name" {
#     default = "expense94.online"
  
# }

variable "instances" {
    default = ["nginx-1", "nginx-2"]
  
}