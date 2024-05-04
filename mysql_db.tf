resource "aws_db_instance" "mysql_db" {
  identifier           = "mysql-instance"
  engine               = "mysql"
  engine_version       = "8.0.36" # replace with your desired engine version
  instance_class       = "db.t3.micro"
  storage_type         = "gp2"
  allocated_storage    = 20
  db_name              = "db_mysql"
  username             = "admin"
  password             = "password"
  skip_final_snapshot  = true
  vpc_security_group_ids = [aws_security_group.ubuntu_sg.id] # reference the security group
}

output "mysql_db_endpoint" {
  value = aws_db_instance.mysql_db.endpoint
}