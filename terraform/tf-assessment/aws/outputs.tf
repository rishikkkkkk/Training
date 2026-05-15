output "s3_name" {
  value = aws_s3_bucket.s3_example[0].tags["Name"]
}

output "vpc_name" {
  value = aws_vpc.vpc.tags["Name"]
}

output "ec2_name" {
  value = aws_instance.ec2[0].tags["Name"]
}