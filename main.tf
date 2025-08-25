provider "aws" {
    region = "ap-southeast-1"
}

module "create_users" {
    source = "github.com/steven2710/tf4//live/global/iam/"
    user_names = ["Steven", "Joe", "Bush", "Peter"]

    
}

output "all_user_names" {
  value = module.create_users.created_user_names
}


/*
Tạo module có tên gọi là "create_users", với source là github.com/steven2710/tf4//live/global/iam/
Vì trong ithub.com/steven2710/tf4//live/global/iam/variables.tf, đã khởi tạo biến là variable "user_names", nên trong module "create_users"
chỉ cần gán user_names theo yêu cầu.

hiepnt@LAP52-HiepNT:/mnt/d/Document/Terraform/LAB/LAB4$ terraform apply

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # module.create_users.aws_iam_user.example[0] will be created
  + resource "aws_iam_user" "example" {
      + arn           = (known after apply)
      + force_destroy = false
      + id            = (known after apply)
      + name          = "Steven"
      + path          = "/"
      + tags_all      = (known after apply)
      + unique_id     = (known after apply)
    }

  # module.create_users.aws_iam_user.example[1] will be created
  + resource "aws_iam_user" "example" {
      + arn           = (known after apply)
      + force_destroy = false
      + id            = (known after apply)
      + name          = "Joe"
      + path          = "/"
      + tags_all      = (known after apply)
      + unique_id     = (known after apply)
    }

  # module.create_users.aws_iam_user.example[2] will be created
  + resource "aws_iam_user" "example" {
      + arn           = (known after apply)
      + force_destroy = false
      + id            = (known after apply)
      + name          = "Bush"
      + path          = "/"
      + tags_all      = (known after apply)
      + unique_id     = (known after apply)
    }

  # module.create_users.aws_iam_user.example[3] will be created
  + resource "aws_iam_user" "example" {
      + arn           = (known after apply)
      + force_destroy = false
      + id            = (known after apply)
      + name          = "Peter"
      + path          = "/"
      + tags_all      = (known after apply)
      + unique_id     = (known after apply)
    }

Plan: 4 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

module.create_users.aws_iam_user.example[3]: Creating...
module.create_users.aws_iam_user.example[2]: Creating...
module.create_users.aws_iam_user.example[0]: Creating...
module.create_users.aws_iam_user.example[1]: Creating...
module.create_users.aws_iam_user.example[1]: Creation complete after 1s [id=Joe]
module.create_users.aws_iam_user.example[2]: Creation complete after 1s [id=Bush]
module.create_users.aws_iam_user.example[0]: Creation complete after 2s [id=Steven]
module.create_users.aws_iam_user.example[3]: Creation complete after 2s [id=Peter]

Apply complete! Resources: 4 added, 0 changed, 0 destroyed.
hiepnt@LAP52-HiepNT:/mnt/d/Document/Terraform/LAB/LAB4$ 
*/


