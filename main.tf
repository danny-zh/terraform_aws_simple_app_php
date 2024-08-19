resource "random_pet" "name" {}

resource "aws_instance" "app_php" {
  ami                    = var.aws_instance_ami
  instance_type          = var.aws_instance_type
  vpc_security_group_ids = [aws_security_group.app_php.id]
  user_data              = file("init-script.sh")
  tags = {
    Name = random_pet.name.id
  }
}

resource "aws_security_group" "app_php" {
  name        = "${random_pet.name.id}-sg"
  description = "Allow http inbound traffic and all outbound traffic"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  lifecycle {
    create_before_destroy = true
  }

}
