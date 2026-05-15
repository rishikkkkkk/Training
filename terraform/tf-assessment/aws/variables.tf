
variable "enviroment" {
  type = string
  default = "dev"
}


variable "enable_s3" {
  type = bool
  default = true
}

variable "enable_ec2" {
  type = bool
  default = true
}

variable "enable_sg" {
  type = bool
  default = true
}
variable "ingress_rules" {
  type = list(object({
    from_port        = number
    to_port          = number
    protocol         = string
    cidr_blocks      = list(string)
    description = string
  }))
  default = [
    {
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks = [ "172.16.0.0/24" ]
      description = "SSH"
    },
    {
      from_port        = 80
      to_port          = 80
      protocol         = "tcp"
      cidr_blocks = [ "172.16.1.0/24" ]
      description = "HTTP"
    }
  ]
}