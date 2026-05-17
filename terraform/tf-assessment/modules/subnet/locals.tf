locals {

  subnet_names = {
    for key, value in var.subnet_cidrs :
    key => join("-", [
      "subnet",var.project_name,key,"001"
    ])
  }

}