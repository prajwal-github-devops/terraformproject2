
resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.ec2type
  key_name = var.key
  count = 2

  tags = {
    Name = "HelloWorld"
  }
}
