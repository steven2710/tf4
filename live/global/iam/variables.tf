variable "user_names" {
description = "Create IAM users with these names"
type = map(string)
default = {
    Steven1   = "admin"
    Trump1     = "dev"
  }
}

resource "aws_iam_user" "example" {
    for_each = var.user_names 
    user_names = each.key
    tags = {
    Role = each.value
  }
}


