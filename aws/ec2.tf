<<<<<<< HEAD
variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_region" {
      default = "ap-northeast-1"
}
variable "aws_zone" {
      default = "ap-northeast-1c"
}

provider "aws" {
      access_key = "${var.aws_access_key}"
      secret_key = "${var.aws_secret_key}"
      region     = "${var.aws_region}"
}

resource "aws_instance" "web1" {
      ami           = "ami-f80e0596"
      instance_type = "t2.micro"
      monitoring    = true
      tags {
          Name = "web1"
      }
}

=======
variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_region" {
      default = "ap-northeast-1"
}
variable "aws_zone" {
      default = "ap-northeast-1c"
}

provider "aws" {
      access_key = "${var.aws_access_key}"
      secret_key = "${var.aws_secret_key}"
      region     = "${var.aws_region}"
}

resource "aws_instance" "web1" {
      ami           = "ami-f80e0596"
      instance_type = "t2.micro"
      monitoring    = true
      tags {
          Name = "web1"
      }
}
>>>>>>> 3f9901047e3c6277708615990855c9a51ab751b8
