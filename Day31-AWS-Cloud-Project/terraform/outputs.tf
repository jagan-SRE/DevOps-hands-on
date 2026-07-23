output "alb_dns_name" {
  description = "Public DNS name of the Application Load Balancer."
  value       = module.alb.dns_name
}

output "health_check_url" {
  description = "URL used to verify the Flask health endpoint."
  value       = "http://${module.alb.dns_name}/healthz"
}

output "vpc_id" {
  description = "ID of the created VPC."
  value       = module.vpc.vpc_id
}

output "public_subnet_ids" {
  description = "Public subnet IDs hosting the ALB and NAT gateways."
  value       = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  description = "Private subnet IDs hosting the Auto Scaling Group."
  value       = module.vpc.private_subnet_ids
}

output "autoscaling_group_name" {
  description = "Name of the application Auto Scaling Group."
  value       = module.compute.autoscaling_group_name
}

output "route53_name_servers" {
  description = "Name servers for the optional hosted zone. Empty when Route 53 is disabled."
  value       = module.route53.name_servers
}
