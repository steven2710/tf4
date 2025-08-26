
output "created_user_names" {
  value       = aws_iam_user.example[*]
  description = "IAM user names created by this module"
}
