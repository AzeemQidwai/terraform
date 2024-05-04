resource "aws_instance" "ubuntu_instance" {
  ami           = "ami-04b70fa74e45c3917" # the provided AMI ID (you should find the corresponding AMI ID for us-east-1)
  instance_type = "t2.micro" # replace with your desired instance type
  key_name      = "ubuntu-key" # the specified key name
  subnet_id     = "subnet-08fcd3d0cfdd73a1f" # the specified subnet ID

  user_data = file("userdata/install_node_docker.sh") # reference the shell script file

  vpc_security_group_ids = [aws_security_group.ubuntu_sg.id] # reference the security group

  tags = {
    Name = "ubuntu_instance" # the specified name tag
  }
}

output "public_ip" {
  value = aws_instance.ubuntu_instance.public_ip
}