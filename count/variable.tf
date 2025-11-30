variable "instances"{
    default=["mongodb","rabbitmq","redis","mysql","catalogue"]
}

variable "zone_id" {
    default= "Z08394983VCGATLL8SRZA"
}

variable "domain_name"{
    default = "amaranath.com"
}