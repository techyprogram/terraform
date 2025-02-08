resource "aws_security_group" "dynamic_sg" {
  name        = "dynamic_sg"
  description = "dynimacally created security group"
  tags = {
    Name = "dynamic-sg"
  }

  dynamic "ingress" {
    for_each = var.port_list

    iterator = port
    content {

      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = [var.allowed_all_ip]
    }
  }

  dynamic "egress" {
    for_each = var.port_list

    iterator = port
    content {

      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = [var.allowed_all_ip]
    }
  }


}
