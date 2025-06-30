variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "environment_name" {
  description = "Name of the Container Apps environment"
  type        = string
}

variable "acr_name" {
  description = "Name of the Azure Container Registry (ACR)"
  type        = string
}

variable "container_app_name" {
  description = "Name of the Container App"
  type        = string
}

variable "container_image" {
  description = "Full image path with tag"
  type        = string
}

variable "acr_login_server" {
  description = "ACR login server (e.g. houracr.azurecr.io)"
  type        = string
}

