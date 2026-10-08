variable "location" {
  description = "Azure region for state storage"
  type        = string
  default     = "uksouth"
}

variable "tags" {
  description = "Tags applied to all resources"
  type        = map(string)
  default = {
    project    = "azure-hub-spoke"
    managed-by = "terraform"
    purpose    = "tfstate"
  }
}