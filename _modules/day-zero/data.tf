# Details of the Aviatrix Controller instance
data "aws_instance" "controller" {
  filter {
    name   = "tag:Name"
    values = ["AviatrixController"]
  }
  filter {
    name   = "instance-state-name"
    values = ["running"]
  }
}

# Details of the Aviatrix CoPilot instance
data "aws_instance" "copilot" {
  filter {
    name   = "tag:Name"
    values = ["AviatrixCopilot"]
  }
  filter {
    name   = "instance-state-name"
    values = ["running"]
  }
}
