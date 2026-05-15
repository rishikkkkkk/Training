
resource "aws_vpc" "vpc" {

  cidr_block = "172.16.0.0/16"

  tags = {
    managedBy = "rishit"
    deploymentMode = "terraform"
    Name = "vpc-${local.final_name}"
  }
  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_subnet" "subnet" {
    depends_on = [ aws_vpc.vpc ]
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "172.16.10.0/24"
  availability_zone = "us-west-2a"

  tags = {
    managedBy = "rishit"
    deploymentMode = "terraform"
    Name = "subnet-${local.final_name}"
  }
}

resource "aws_security_group" "sg" {
  count = var.enable_sg ? 1 : 0
  name = "my-sg-${count.index + 1}"
  vpc_id = aws_vpc.vpc.id

dynamic "ingress" {
    for_each = var.ingress_rules
    iterator = ok
    content {
    from_port        = ok.value.from_port
    to_port          = ok.value.to_port
    protocol         = ok.value.protocol
    cidr_blocks      = ok.value.cidr_blocks
    description      = ok.value.description
    }
  }
  tags = {
    managedBy = "rishit"
    deploymentMode = "terraform"
  }
}

resource "aws_instance" "ec2" {
    count = var.enable_ec2 ? 1 : 0
  vpc_security_group_ids = [ aws_security_group.sg[count.index].id ]
  ami           = "ami-005e54dee72cc1d00" # us-west-2
  instance_type = "t2.micro"

  credit_specification {
    cpu_credits = "unlimited"
  }
   tags = {
    managedBy = "rishit"
    deploymentMode = "terraform"
    Name = "ec2-${local.final_name}"
  }
}

resource "aws_s3_bucket" "s3_example" {
    count = var.enable_s3 ? 1 : 0
  bucket = "s3-bucket-${local.final_name}${count.index + 1}"
  tags = {
    Name        = "MyBucket-${count.index + 1}"
    managedBy = "rishit"
    deploymentMode = "terraform"
  }
  lifecycle {
    prevent_destroy = true
  }
}