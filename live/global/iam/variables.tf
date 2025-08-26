variable "user_names" {
description = "Create IAM users with these names"
type = list(string)
default = ["neo", "trinity", "morpheus"]
}

resource "aws_iam_user" "example" {
for_each = toset(var.user_names) #toset là để convert list thành set. for_each chỉ hỗ trợ set, map.
#set về cơ bản giống như list, nhưng set không hỗ trợ trùng lặp, các phần tử là duy nhất
#đối với set, thì each.key hay each.value đều như nhau. Tuy nhiên đối với map, dạng name và value
#thì each.key là name, còn key.value là value
name = each.key
}
