
output "created_user_names" {
  value       = aws_iam_user.example[*].name
  description = "IAM user names created by this module"
}
