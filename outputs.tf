
output "launch_template_id" {
  description = "ID of the AWS Launch Template"
  value       = aws_launch_template.example.id
}

output "autoscaling_group_name" {
  description = "Name of the Auto Scaling Group"
  value       = aws_autoscaling_group.example.name
}

output "alb_dns_name" {
  description = "DNS name of the Application Load Balancer"
  value       = aws_lb.example.dns_name
}