variable "server_port" {
  description = "Port on which the server listens"
  type        = number
  default     = 8080
}

variable "instance_security_group_name" {
  description = "Name of the security group for instances"
  type        = string
  default     = "instance-sg"
}

variable "alb_name" {
  description = "Name of the Application Load Balancer and Target Group"
  type        = string
  default     = "example-alb"
}

variable "alb_security_group_name" {
  description = "Name of the security group for the ALB"
  type        = string
  default     = "alb-sg"
}
