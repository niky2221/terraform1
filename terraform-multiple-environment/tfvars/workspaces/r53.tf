resource "aws_route53_record" "expense" {
    count = length(var.instances)
    zone_id = var.zone_id
    name = var.instances[count.index] == "frontend" && terraform.workspace == "prod" ? var.domain_name : "${var.instances[count.index]}.${terraform.workspace}.${var.domain_name}"
    type = "A"
    ttl  = 1
    records = [var.instances[count.index] == "frontend" && terraform.workspace == "prod" ? aws_instance.expense[count.index].public_ip : aws_instance.expense[count.index].private_ip]
    allow_overwrite = true
}

# resource "aws_route53_record" "frontend" {
#     zone_id = var.zone_id
#     name = "${var.domain_name}"
#     type = "A"
#     ttl  = 1
#     records = [aws_instance.this[2].public_ip]
#     allow_overwrite = true
# }