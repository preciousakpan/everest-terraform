variable "vnet_name" {
    type            = string
    description     = "Name of virtual network "
}

variable "address_space" {
    type            = list(string)
    description     = "Ip of the vnet "
}

variable "rg_location" {
    type            = string
    description     = "location of the rg "
}

variable "rg_name" {
    type            = string
    description     = "Name of rg "
}

variable "sn_name" {
    type            = string
    description     = "Name of subnet "
}

variable "address_prefix" {
    type            = list(string)
    description     = "Name of subnet mask "
}

variable "ip_name" {
    type            = string
    description     = "Name of ip "
}