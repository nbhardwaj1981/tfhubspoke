variable "infravnet" {
  description = "Vnet name"
}


variable "vnet" {
  description = "Vnet Address Space"
}

variable "subnet" {
  description = "Subnet Address Block"
  type    = list(string)
  default = []
}

variable "subnetname" {
  description = "name of Subnet Address Block"
  type    = list(string)
  default = []
}

variable "subnet_ipmap" {
  description = "Map of hostname and IP address for DB servers"
  type        = map(string)
  default     = {}
}
######################subnet2#############
variable "dbvnet"{
    description = "db vnet name"
}

variable "dbvnet1" {
    description = "address space"
}

variable "dbsubnet" {
  description = "Subnet Address Block"
  type    = list(string)
  default = []
}

variable "dbsubnetname" {
  description = "name of Subnet Address Block"
  type    = list(string)
  default = []
}

variable "dbsubnet_ipmap" {
  description = "Map of hostname and IP address for DB servers"
  type        = map(string)
  default     = {}
}


##################### HUB vnet ###########
variable "hubvnet"{
    description = "hub vnet name"
}

variable "hubvnet1" {
    description = "address space"
}

variable "hubsubnet" {
  description = "Subnet Address Block"
  type    = list(string)
  default = []
}

variable "hubsubnetname" {
  description = "name of Subnet Address Block"
  type    = list(string)
  default = []
}

variable "hubsubnet_ipmap" {
  description = "Map of hostname and IP address for DB servers"
  type        = map(string)
  default     = {}
}


########################
### TAGS ################################################################################

variable "environment" {
  description = "Environment Tag"
}

variable "createdby" {
  description = "createdby Tag"
}

variable "owner" {
  description = "owner Tag"
}
#######################
