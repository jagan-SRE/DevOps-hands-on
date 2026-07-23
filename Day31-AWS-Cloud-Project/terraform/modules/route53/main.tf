resource "aws_route53_zone" "this" {
  count = var.enabled ? 1 : 0
  name  = var.domain_name
}

resource "aws_route53_record" "app" {
  count = var.enabled ? 1 : 0

  zone_id = aws_route53_zone.this[0].zone_id
  name    = var.domain_name
  type    = "A"

  alias {
    name                   = var.alb_dns_name
    zone_id                = var.alb_zone_id
    evaluate_target_health = var.evaluate_target_health
  }
}
