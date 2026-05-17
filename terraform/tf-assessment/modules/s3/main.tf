resource "aws_s3_bucket" "s3" {

  count = var.bucket_count

  bucket = "${local.bucket_name}-${count.index + 1}"

  tags = merge(
    var.common_tags,
    {
      Name         = "${local.bucket_name}-${count.index + 1}"
      ResourceType = "s3"
    }
  )

  lifecycle {
    prevent_destroy = true
  }

}