#Providers are a logical abstraction of an upstream API. 
#They are responsible for understanding API interactions and exposing resources. 

terraform {
  required_providers {
    # mongodbatlas = {
    #   source  = "mongodb/mongodbatlas"
    #   version = "= 1.15.1"
    # }
    # aws = {
    #   version = "<= 5.40.0"
    #   source  = "hashicorp/aws"
    # }
    # elastic = {
    #   version = "<= 0.11.0"
    #   source  = "elastic/elasticstack"
    # }
    azurerm = {
      version = "<= 3.91.0"
      source  = "hashicorp/azurerm"
    }
  }
  required_version = "<= 1.7.3"

  #Terraform Remote Backend Config
  backend "azurerm" {
    resource_group_name  = "COMMON-RG"
    storage_account_name = "devsecopsb39tfstate"
    container_name       = "tfstate"
    key                  = "DevSecOpsB39Azure.tfstate"
  }
}

provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = false
    }
  }
}