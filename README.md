# terraform_aws_simple_app_php
A simple terraform configuration for deploying 1 tier application compose of a compute node (ec2 instance).

This terraform configuration:

1. Lauches ec2 resource (in default vpc and without subnet preference) with user defined data in **init-script.sh**
2. Creates security group for allowing http (tcp port 80) incoming connections from anywhere and allowing all outgoing connections from the instance to anywhere.
3. Attaches securit group resource to the ec2 instance resource
4. Prints output variables in console after terraform apply command for checking the entry point (application url) of our app




