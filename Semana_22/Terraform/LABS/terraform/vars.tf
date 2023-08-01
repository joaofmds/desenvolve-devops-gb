variable "amis" {
    type = "map"

    default = {
        "us-east-1" = "ami-0715c1897453cabd1"
        "us-east-2" = "ami-0715c1897453cabd1"
    }
}

variable "cdirs_acesso_remoto" {
  type = "list"
  default = ["45.176.161.88"]
}

variable "key_name" {
  default = "terraform_aws"
}