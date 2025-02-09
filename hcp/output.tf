output "sg-details" {
  value = aws_security_group.hcp.arn
}

output "sg-user" {
  value = aws_iam_user.sagar-hcp.arn
}

output "policy-details" {
  value = data.aws_iam_policy.data-policy
}