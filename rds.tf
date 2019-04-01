variable "access_key"{}
variable "secret_key"{}
variable "region"{}
variable "zone"{}
variable "database_user_name"{}
variable "database_name"{}
variable "database_character"{}

provider "alicloud"{
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
    region     = "${var.region}"
}

resource "alicloud_vpc" "default"{
    name        =   "vpc-rds"
    cidr_block  =   "172.16.0.0/16"
}

resource "alicloud_vswitch" "default"{
    vpc_id      =   "${alicloud_vpc.default.id}"
    cidr_block  =   "172.16.0.0/24"
}

resource "alicloud_db_instance" "default"{
    engine              =   "MySQL"
    engine_version      =   "5.7"
    db_instance_class   =   "rds.mysql.t1.small"
    db_instance_storage =   "10"
    vswitch_id          =   "${alicloud_vpc.default.id}"
}