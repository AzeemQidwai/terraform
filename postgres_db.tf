resource "aws_db_instance" "postgres_db" {
  identifier           = "postgres-instance"
  engine               = "postgres"
  engine_version       = "16.1" # replace with your desired engine version
  instance_class       = "db.t3.micro"
  storage_type         = "gp2"
  allocated_storage    = 20
  db_name              = "db_postgres"
  username             = "azeem"
  password             = "password"
  skip_final_snapshot  = true
  vpc_security_group_ids = [aws_security_group.ubuntu_sg.id] # reference the security group
}

output "postgres_db_endpoint" {
  value = aws_db_instance.postgres_db.endpoint
}
