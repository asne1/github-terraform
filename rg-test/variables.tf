variable "rg_test_name" {
  type = string
  description = "Name of the resource group for the backend"
}

variable "rg_test_location" {
  type = string
  description = "Location of the resource group for the backend" 
  default = "westeurope" 
}