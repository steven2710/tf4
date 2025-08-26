variable "user_names" {
description = "Create IAM users with these names"
type = list(string)
default = ["neo", "trinity", "morpheus"]
}

resource "aws_iam_user" "example" {
for_each = toset(var.user_names)
name = each.value
}
