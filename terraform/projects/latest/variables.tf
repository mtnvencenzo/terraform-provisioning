variable "global_environment" {
  type        = string
  description = "Global environment name, e.g. 'dev' or 'stage' or 'prod'"
  default     = "glo"
}

variable "location" {
  type        = string
  description = "Azure region where to create resources."
  default     = "East US"
}

variable "region" {
  type    = string
  default = "eus"
}

variable "sub" {
  type        = string
  description = "Subscription short identitifer to be used in resource naming"
  default     = "vec"
}

variable "sequence" {
  type        = string
  description = "The sequence number of the resource typically starting with 001"
  default     = "001"
}