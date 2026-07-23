variable "aws_region" {
  description = "AWS region in which to build the environment."
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Short name used for resource naming."
  type        = string
  default     = "devops-practice"
}

variable "vpc_cidr" {
  description = "CIDR range for the VPC."
  type        = string
  default     = "10.42.0.0/16"
}

variable "availability_zones" {
  description = "Two or more availability zones. Leave empty to select the first two available zones."
  type        = list(string)
  default     = []

  validation {
    condition     = length(var.availability_zones) == 0 || length(var.availability_zones) >= 2
    error_message = "Provide at least two availability zones or leave the list empty."
  }
}

variable "instance_type" {
  description = "EC2 instance type used by the Auto Scaling Group."
  type        = string
  default     = "t3.micro"
}

variable "min_size" {
  description = "Minimum number of application instances."
  type        = number
  default     = 2
}

variable "desired_capacity" {
  description = "Desired number of application instances."
  type        = number
  default     = 2
}

variable "max_size" {
  description = "Maximum number of application instances."
  type        = number
  default     = 4
}

variable "container_image" {
  description = "Public container image containing the Flask metrics application."
  type        = string
  default     = "ghcr.io/jagan-sre/devops-45day-practice:4fcf41ab30bea44cfc4d645759ffe5f6816291e5"
}

variable "enable_route53" {
  description = "Create a public hosted zone and ALB alias. Enable only for a domain you control."
  type        = bool
  default     = false
}

variable "domain_name" {
  description = "Owned DNS zone name. The example value is intentionally non-routable."
  type        = string
  default     = "portfolio.example.com"
}

variable "tags" {
  description = "Tags applied to all supported resources."
  type        = map(string)
  default = {
    Project   = "devops-45day-practice"
    ManagedBy = "Terraform"
  }
}
