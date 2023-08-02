variable "AWS_REGION" {
  default = "us-east-1"
}

variable "AWS_ZONE1" {
  default = "us-east-1a"
}

variable "AMI" {
  type = map(any)
  default = {
    us-east-1 = "ami-0261755bbcb8c4a84"
    us-east-2 = "ami-0430580de6244e02e"
  }
}

variable USER {
  default = "ubuntu"
}