variable "password" {
  description = "The Aviatrix controller/copilot and test instance login user password"
}

variable "controller_ip" {
  description = "The Aviatrix controller eip"
}

variable "aws_account_name" {
  description = "The onboarded Aviatrix Access Account Name for AWS"
  default     = "SelfService-AWS"
}

variable "aws_region" {
  description = "The aws region used for all resources"
  default     = "us-east-1"
}
