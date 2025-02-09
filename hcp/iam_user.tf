resource "aws_iam_user" "sagar-hcp" {
  name = "sagar-hcp"
}


resource "aws_security_group" "hcp" {
  name = "hcp"
  tags = {
    Name = "sg-hcp"
    env= "dev"
  }
  lifecycle {
    ignore_changes = [ tags ]
  }
}

resource "aws_vpc_security_group_ingress_rule" "hcp-in" {
  security_group_id = aws_security_group.hcp.id
  for_each          = var.inbound_ips
  cidr_ipv4         = "${each.key}/32"
  from_port         = 8080
  to_port           = 8080
  ip_protocol       = "tcp"
}

data "aws_iam_policy" "data-policy" {
  arn = "arn:aws:iam::aws:policy/aws-service-role/AccessAnalyzerServiceRolePolicy"
}