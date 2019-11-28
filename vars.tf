variable "access_key" {
  }
variable "secret_key" {
  }

variable "AWS_REGION" {
  default = "eu-west-1"
}
variable "enabled" {
  description = "Create resources."
  default     = true
}