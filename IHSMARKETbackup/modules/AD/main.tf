resource "aws_directory_service_directory" "AD" {
  name     = "corp.com"
  password = "SuperSecretPassw0rd"
  size     = "Small"

  vpc_settings {
    vpc_id     = var.vpc_id
    subnet_ids = var.subnets
  }

  tags = {
    Project = "IHSM"
  }
}