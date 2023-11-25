data "terraform_remote_state" "vpc" {
  backend = "remote"

  config = {
    organization = "nur1889"
    workspaces = {
      name = "vpc"
    }
  }
}




resource "aws_db_subnet_group" "default" {
  name       = "main"
  subnet_ids = [
    data.terraform_remote_state.vpc.outputs.private_subnets
  ]
}

