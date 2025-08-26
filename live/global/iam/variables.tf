variable "user_names" {
description = "Create IAM users with these names"
type = list(string)
default = ["neo", "trinity", "morpheus"]
}

resource "aws_iam_user" "example" {
for_each = toset(var.user_names) #toset là để convert list thành set. for_each chỉ hỗ trợ set, map.
name = each.key
}
