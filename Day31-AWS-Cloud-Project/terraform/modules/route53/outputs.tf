output "name_servers" {
  value = var.enabled ? aws_route53_zone.this[0].name_servers : []
}
