variable "account_name" {
  type = string
  description = "name azure cosmos db account"
  validation {
    condition = length(var.account_name)>4 && length(var.account_name)<30
    error_message = "account name should be between 4 - 30 characters"
  }
}

variable "location" {
  type = string
  description = "location where account should be created"
}

variable "resource_group" {
  type = string
  description = "name of resource group under which this account will be created"
}

variable "enable_free_tier" {
  type = bool
  default = false
  description = "you want to enable free tier while creating account. Only one free account is allowed per subscription"
}