provider "aws" {
    region = "ap-southeast-1"
}

module "create_users" {
    source = "github.com/steven2710/tf4//live/global/iam/variables.tf"
}