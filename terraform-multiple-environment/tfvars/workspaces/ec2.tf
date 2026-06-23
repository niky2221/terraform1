resource "aws_instance" "expense" {
  count = length(var.instances)
  ami                    = "ami-0220d79f3f480ecf5" # This is our devops-practice AMI ID
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  instance_type          = "t3.micro"
  tags = {
        Name = "${var.instances[count.index]}.${terraform.workspace}"
    }
}

resource "aws_security_group" "allow_tls" {
  name        = "${var.project}.${terraform.workspace}"
  description = "Allow TLS inbound traffic and all outbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.project}.${terraform.workspace}"
  }
}