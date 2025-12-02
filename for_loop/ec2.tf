resource "aws_instance" "terraform" {
  for_each = var.instances
  ami           = "${var.ami_id}"
  instance_type = each.value
  vpc_security_group_ids = [aws_security_group.allow_all.id]

  tags = {
    Name = each.key
    Terraform = "true"
  }
}

resource "aws_security_group" "allow_all" {
  name        = "allow_all"

  egress {
    from_port        = 0 # all ports are allowed
    to_port          = 0
    protocol         = "-1" # all protocols
    cidr_blocks      = ["0.0.0.0/0"]
  }
    ingress {
        from_port        = 0 # all ports are allowed
        to_port          = 0
        protocol         = "-1" # all protocols
        cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name="allow-all"
  }

}
