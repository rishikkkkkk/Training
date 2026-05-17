output "instance_ids" {

  value = aws_instance.inst[*].id

}

output "public_ips" {

  value = aws_instance.inst[*].public_ip

}