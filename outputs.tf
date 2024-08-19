output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.app_php.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.app_php.public_ip
}

output "domain-name" {
  value = aws_instance.app_php.public_dns
}

output "application-url" {
  value = "${aws_instance.app_php.public_dns}/index.php"
}