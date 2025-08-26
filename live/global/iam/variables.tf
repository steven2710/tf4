variable "user_names" {
description = "Create IAM users with these names"
type = map(string)
default = {
    Steven2   = "admin"
    Trump2     = "dev"
  }
}

resource "aws_iam_user" "example" {
    for_each = var.user_names 
    name = each.key
    tags = merge ({
    Role = each.value
    Department = each.value
  },
  {
    CreatedBy = "terraform"
    ManagedBy = "IT"
    }
    )
  }


