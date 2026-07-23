data "aws_availability_zones" "available" {
  state = "available"
}

locals {
  availability_zones = length(var.availability_zones) > 0 ? var.availability_zones : slice(data.aws_availability_zones.available.names, 0, 2)
}

module "vpc" {
  source = "./modules/vpc"

  project_name       = var.project_name
  vpc_cidr           = var.vpc_cidr
  availability_zones = local.availability_zones
}

module "security" {
  source = "./modules/security"

  project_name = var.project_name
  vpc_id       = module.vpc.vpc_id
  app_port     = 5000
}

module "alb" {
  source = "./modules/alb"

  project_name       = var.project_name
  vpc_id             = module.vpc.vpc_id
  public_subnet_ids  = module.vpc.public_subnet_ids
  alb_security_group = module.security.alb_security_group_id
  app_port           = 5000
}

module "compute" {
  source = "./modules/compute"

  project_name          = var.project_name
  private_subnet_ids    = module.vpc.private_subnet_ids
  app_security_group_id = module.security.app_security_group_id
  target_group_arn      = module.alb.target_group_arn
  instance_type         = var.instance_type
  container_image       = var.container_image
  min_size              = var.min_size
  desired_capacity      = var.desired_capacity
  max_size              = var.max_size
}

module "route53" {
  source = "./modules/route53"

  enabled                = var.enable_route53
  domain_name            = var.domain_name
  alb_dns_name           = module.alb.dns_name
  alb_zone_id            = module.alb.zone_id
  evaluate_target_health = true
}
