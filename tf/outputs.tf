output "alb_dns_name" {
  value = aws_lb.app_alb.dns_name
}

output "blue_instance_id" {
  value = aws_instance.blue.id
}

output "green_instance_id" {
  value = aws_instance.green.id
}
