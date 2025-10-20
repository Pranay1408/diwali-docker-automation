resource "aws_key_pair" "diwali_key" {
  key_name = var.key_name
  public_key = file(var.public_key_path)
}

resource "aws_security_group" "diwali_sg" {
  name = "diwali_sg"
  description = "Allow SSH and HTTP port"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  }

  ingress {
    from_port = 5000
    to_port = 5000
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [ "0.0.0.0/0" ]
  }
}

resource "aws_instance" "diwali_ec2" {
  ami = "ami-07f07a6e1060cd2a8"
  instance_type = var.instance_type
  key_name = aws_key_pair.diwali_key.key_name
  vpc_security_group_ids = [aws_security_group.diwali_sg.id]

  tags = {
    Name = "Diwali-Lights-Instance"
  }
}

output "public_ip" {
  value = aws_instance.diwali_ec2.public_ip
}

# public_ip = "15.206.88.131"