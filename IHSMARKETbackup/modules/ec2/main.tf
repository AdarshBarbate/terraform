resource "aws_instance" "Ec2" {

      ami = var.ami
      instance_type = var.instance_type
      security_group = var.security_group
      
      tags = {
        name = var.ec2_name
      }

      lifecycle {
        prevent_destroy = true
      }
}