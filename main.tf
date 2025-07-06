resource "azurerm_resource_group" "rg1" {
    name = "ramanrgnew"
    location = "eastus"
}
resource "azurerm_virtual_network" "tirjuvnet" {
    name = "vnet2"
    resource_group_name = "ramanrgnew"
    location = "eastus"
    address_space =  = ["10.0.0.1/24"]
}
resource "azurerm_virtual_network" "birjuvnet" {
    name = "vnet1"
    resource_group_name = "ramanrgnew"
    location = "eastus"
    address_space =  = ["10.0.0.0/24"]
}

resource "azurerm_subnet" "subnet" {
    name = "birjusubnet"
    virtual_network_name = "birjvnet"
    resource_group_name = "ramanrgnew"
    address_prefixes = ["10.0.0.0/24"]
}
resource "azurerm_subnet" "tsubnet" {
    name = "tirjusubnet"
    virtual_network_name = "birjvnet"
    resource_group_name = "ramanrgnew"
    address_prefixes = ["10.0.0.1/24"]
}