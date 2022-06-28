resource "aws_directory_service_directory" "AD" {
  name     = "corp.com"         #error: "Requested domain is not active",
  password = "SuperSecretPassw0rd"
  size     = "Small"
  type     = "MicrosoftAD"

  vpc_settings {
    vpc_id     = var.vpc_id
    subnet_ids = var.subnets
  }

  tags = {
    Project = "IHSM"
  }
}