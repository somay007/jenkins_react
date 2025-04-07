variable "subscription_id" {
  description = "Subscription id of the account"
  type = string
  default = "2e35691f-5103-4cad-a61c-dbc64c14af55"
}

variable "location" {
    description = "location of service"
    type = string
    default = "centralindia"
}
variable "resource_group_name" {
  description = "resource group name"
  type = string
  default = "rg-jenkins"
}

variable "os" {
  description = "Operating system"
  type = string
  default = "Linux"
}

variable "service_plan_name" {
  description = "Name of the service plan"
  type = string
  default = "appserviceplanSomay"
}



variable "linux_web_app_name" {
  description = "name of the app service"
  type = string
  default = "webapijenkins10101010"
}
variable "pricing_plan" {
  description = "Pricing plan of the azure service plan"
  type = string
  default = "F1"
}

# variable "linux_web_app_slot_name" {
#   description = "name of windows web app slot"
#   type = string
#   default = "winappslotSomay"
# }

variable "auth_enabled" {
  description = "Enable authentication for the app service"
  type        = bool
  default     = true
}





