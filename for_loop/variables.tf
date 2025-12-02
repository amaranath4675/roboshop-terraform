variable "instances"{
    type = map
    default = {
        mongodb = "t3.micro"
        redis = "t3.micro"
        mysql = "t3.small"
    }
}

variable "domain_name"{
    default = "amaranath.com"
}

variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
}

variable "zone_id" {
    type = string
    default = "Z08394983VCGATLL8SRZA"
}

