locals {

  security_group_name = join("-", [
    "sg",var.project_name,var.environment,"001"
  ])

}