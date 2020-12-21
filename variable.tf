variable "aws_launchcfg" {
  description = "aws launch config for EC2 ASG"
  default     = "aws_launch"
  type        = string
}

variable "aws_image" {
  description = "amazon linux image id for region Ohio"
  default     = "ami-04d29b6f966df1537"
  type        = string
}

variable "awsinstance_type" {
  description = "aws instance types"
  default     = ["t2.nano", "t2.micro", "t2.large"]
  type        = list

}

variable "aws_publicip" {
  description = "public ip assigment for ec2"
  default     = true
  type        = bool

}

variable "user_data" {
  description = "user data for apache script"

}

variable "pubkey" {
  description = "ssh public key"
  default     = "/home/mykeypair.pub"

}


variable "az" {
  description = "Availability Zones"
  default     = "us-east-1a"


}

variable "region" {
  default = "us-east-1"

}