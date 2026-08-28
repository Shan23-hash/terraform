data "aws_ami" "joindevops" {
  most_recent      = true
  owners           = ["309956199498"]

  filter {
    name   = "name"
    values = ["RHEL-10*"]
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

output "ami_id" {
  value       = data.aws_ami.joindevops.id
}