resource "aws_security_group" "ubuntu_sg" {
  name        = "ubuntu_sg"
  description = "Allow SSH and MySQL & PostgeSQL traffic"
  vpc_id      = "vpc-0c6e7eddcc9ed695b" # the specified VPC ID

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # allow traffic from any IP address
  }

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # allow traffic from any IP address
  }

   ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"] # allow traffic to any IP address
  }

  tags = {
    Name = "ubuntu_sg"
  }
}
