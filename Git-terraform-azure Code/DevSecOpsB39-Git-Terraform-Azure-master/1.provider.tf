#Providers are a logical abstraction of an upstream API. 
#They are responsible for understanding API interactions and exposing resources. 

terraform {
  required_providers {
    mongodbatlas = {
      source  = "mongodb/mongodbatlas"
      version = "= 1.15.1"
    }
    aws = {
      version = "<= 5.40.0"
      source  = "hashicorp/aws"
    }
    azurerm = {
      version = "<= 3.91.0"
      source  = "hashicorp/azurerm"
    }
    elastic = {
      version = "<= 0.11.0"
      source  = "elastic/elasticstack"
    }
  }
  required_version = "<= 1.7.3"
}

provider "azurerm" {
  features {}
}