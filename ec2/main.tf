# pulls info from another workspace
data "terraform_remote_state" "vpc" {
  backend = "remote"

  config = {
    organization = "Abdykadyrov"
    workspaces = {
      name = "vpc"
    }
  }
}

# pulls info from another workspace
data "terraform_remote_state" "rds" {
  backend = "remote"

  config = {
    organization = "Abdykadyrov"
    workspaces = {
      name = "vpc"
    }
  }
}
