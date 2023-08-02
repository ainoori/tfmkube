resource "aws_key_pair" "mkubekey" {
  public_key = "mkube_key"
  key_name = file("mkube_key.pub")
}

resource "aws_instance" "mkube_srv" {
  ami = lookup(var.AMI, var.AWS_REGION )
  instance_type = "t2.micro"
  availability_zone = var.AWS_ZONE1
  key_name = aws_key_pair.mkubekey.key_name
  tags = {
    Name = mkube
    Project = mkubeTest
  }
}
