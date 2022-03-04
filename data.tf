data "aws_ami" "latest_ami_windows" {
  most_recent      = true
#  name_regex       = "Windows_Server-2019*"
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["Windows_Server-2019*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

data "aws_ami" "latest_ami_linux" {
  most_recent      = true
#  name_regex       = "Windows_Server-2019*"
  owners           = ["309956199498"]

  filter {
    name   = "name"
    values = ["RHEL-8.4*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}