provider "aws" {
  version = "~> 2.0"
  region = "us-east-1"
}

provider "aws" {
  alias = "us-east-2"
  version = "~> 2.0"
  region = "us-east-2"
}

resource "aws_instance" "dev" {
  count = 3
  ami = "ami-0715c1897453cabd1"
  instance_type = "t2.micro"
  key_name = var.key_name
  tags = {
    Name = "dev${count.index}"
  }

  vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"]
}

resource "aws_instance" "dev4" {
  ami = "ami-0715c1897453cabd1"
  instance_type = "t2.micro"
  key_name = var.key_name
  tags = {
    Name = "dev4"
  }

  vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"]
  depends_on = [aws_s3_bucket.dev4]
}

resource "aws_instance" "dev5" {
  ami = var.amis["us-east-2"]
  instance_type = "t2.micro"
  key_name = var.key_name
  tags = {
    Name = "dev5"
  }

  vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"]
}

resource "aws_instance" "dev6" {
  provider = "aws.us-east-2"
  ami = var.amis["us-east-2"]
  instance_type = "t2.micro"
  key_name = var.key_name
  tags = {
    Name = "dev6"
  }

  vpc_security_group_ids = ["${aws_security_group.acesso-ssh-us-east-2.id}"]
  depends_on = ["aws_dynamodb_table.dynamodb-homologacao"]
}

resource "aws_instance" "dev7" {
  provider = "aws.us-east-2"
  ami = var.amis["us-east-2"]
  instance_type = "t2.micro"
  key_name = var.key_name
  tags = {
    Name = "dev7"
  }

  vpc_security_group_ids = ["${aws_security_group.acesso-ssh-us-east-2.id}"]
}

resource "aws_s3_bucket" "dev4" {
  bucket = "joaofmds-dev4"
  acl = "private"

  tags = "joaofmds-dev4"
}

resource "aws_dynamodb_table" "dynamodb-homologacao" {
  provider = "aws.us-east-2"
  name = "GameScores"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "UserId"
  range_key = "GameTitle"

  attribute {
    name = "UserId"
    type = "S"
  }

  attribute {
    name = "GameTitle"
    type = "S"
  }
}