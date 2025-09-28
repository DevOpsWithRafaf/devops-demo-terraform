resource "aws_instance" "ostad-ec2-instance" {
  ami                    = var.ami-id
  instance_type          = "t3.large"
  vpc_security_group_ids = [var.sg-id]
  key_name = var.key-name
  tags = {
    Name = "tf-demo-vm"
  }
}