resource "aws_route53_record" "expense" {
    count = 3
    zone_id = var.zone_id
    name = "${var.instances[count.index]}.${var.domain_name}"
    type = "A"
    ttl  = 1
    records = [aws_instance.this[count.index].private_ip]
}

resource "aws_route53_record" "frontend" {
    zone_id = var.zone_id
    name = "${var.domain_name}"
    type = "A"
    ttl  = 1
    records = [aws_instance.this[2].public_ip]
}