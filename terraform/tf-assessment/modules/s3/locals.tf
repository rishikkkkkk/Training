locals {

  bucket_name = join("-", [
    "s3",var.project_name,var.environment,"001"
  ])

}