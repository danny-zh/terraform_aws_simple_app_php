# terraform_aws_simple_app_php
A simple terraform configuration for deploying 1 tier application composed of a compute node (ec2 instance) running a tetris game.

This terraform configuration:

1. Lauches ec2 resource (in default vpc and without subnet preference) with user defined data in **init-script.sh**
2. Creates security group for allowing http (tcp port 80) incoming connections from anywhere and allowing all outgoing connections from the instance to anywhere.
3. Attaches security group resource to the ec2 instance resource
4. Prints output variables in console after terraform apply command for checking the entry point (application url) of our app

The image below is an example of how the application must render and be accesible from the web browser.

<p align="center">
  <img src="https://github.com/user-attachments/assets/a3a54901-c57f-452f-a215-44696c72eff4" height=400>
</p>
