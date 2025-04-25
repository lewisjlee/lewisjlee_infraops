variable "AWS_REGION" {
  default = "ap-northeast-2"
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}

variable "AMIS" {
  default = "ami-097e8439574e902b4"
}

variable "cluster-name" {
  default = "eks-lewisjlee-cluster"
  type    = string
}

variable "aws_availability_zones" {
  default = ["ap-northeast-2a","ap-northeast-2c"]
}

variable "public_subnets" {
  default = ["10.10.14.0/24", "10.10.15.0/24"]
}

locals {
  db-parameters = {
    max_allowed_packet  = "16777216"
  }
}

variable "db-suffix" {
  type = map(string)
  default = {
    "primary" = "primary",
    "secondary" = "secondary"
  }
}