resource "aws_instance" "jump-host" {
  count = var.jump_host_enabled == true ? 1 : 0

  ami                         = var.ami
  instance_type               = var.instance_type
  associate_public_ip_address = true
  key_name                    = var.key_name
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = ["${aws_security_group.jump-host-sg.id}"]

  tags = {
    Name = "Jump host"
  }
}

resource "aws_security_group" "jump-host-sg" {
  name   = "jump-host-security-group"
  vpc_id = var.vpc_id

  ingress {
    protocol    = "tcp"
    from_port   = 22
    to_port     = 22
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    protocol    = -1
    from_port   = 0 
    to_port     = 0 
    cidr_blocks = ["0.0.0.0/0"]
  }
}