provider "aws" {
    region = "ap-southeast-1"
}

module "webserver_cluster" {
    source = "github.com/steven2710/tf4//live/global/iam/variables.tf"
}