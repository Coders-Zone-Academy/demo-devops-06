# DB SG
resource "aws_security_group" "db_sg" {
  vpc_id = "" # enter your vpc

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    security_groups = [""]  # enter your security group
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "DBServerSG"
  }
}