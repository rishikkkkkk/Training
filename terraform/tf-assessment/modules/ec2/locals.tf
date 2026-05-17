locals {

  instance_name = join("-", [
    "ec2", var.project_name,var.environment,"001"
  ])

}