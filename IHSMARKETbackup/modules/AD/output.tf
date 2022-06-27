output "example" {
  description = "The zone_id of the load balancer to assist with creating DNS records."
  value       = aws_directory_service_directory.AD.id
}