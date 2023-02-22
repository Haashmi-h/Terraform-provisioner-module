variable "region" {
  default     = "ap-south-1"
  description = "region at which this is implemented"
}
variable "access_key" {
  default     = "***********************
  description = "my access key"
}
variable "secret_key" {
  default     = "*************************************"
  description = "my secret key"
}
variable "instance_ami" {
  default = "ami-0cca134ec43cf708f"
}
variable "instance_type" {
  default = "t2.micro"
}
