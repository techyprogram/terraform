

resource "aws_security_group" "t-sg-1" {
  name = "t-sg-name-1"
  tags = {
    Name = "t-sg-name-1"
  }
}

resource "aws_vpc_security_group_ingress_rule" "ingress-all" {
  security_group_id = aws_security_group.t-sg-1.id
  cidr_ipv4 = "0.0.0.0/0"
  ip_protocol = "tcp"
  from_port = 80
  to_port = 80
}

resource "aws_vpc_security_group_egress_rule" "egress-all" {
    security_group_id = aws_security_group.t-sg-1.id
    cidr_ipv4 = "0.0.0.0/0"
    ip_protocol = "-1"

  
}