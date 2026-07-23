resource "aws_security_group" "alb" {
  name_prefix = "${var.project_name}-alb-"
  description = "Internet-facing HTTP access to the application load balancer"
  vpc_id      = var.vpc_id

  ingress {
    description      = "Public HTTP"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    description = "Forward traffic to application targets"
    from_port   = var.app_port
    to_port     = var.app_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = { Name = "${var.project_name}-alb" }

  lifecycle { create_before_destroy = true }
}

resource "aws_security_group" "app" {
  name_prefix = "${var.project_name}-app-"
  description = "Application access only from the load balancer"
  vpc_id      = var.vpc_id

  ingress {
    description     = "Flask traffic from ALB"
    from_port       = var.app_port
    to_port         = var.app_port
    protocol        = "tcp"
    security_groups = [aws_security_group.alb.id]
  }

  egress {
    description = "Package and image downloads through NAT"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = { Name = "${var.project_name}-app" }

  lifecycle { create_before_destroy = true }
}
