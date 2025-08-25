provider "aws" {
    region = "ap-southeast-1"
}

module "webserver_cluster" {
    source = "github.com/steven2710/tf2//modules/services/webserver-cluster/?ref=v0.0.2"
}