resource "azurerm_resource_group" "rg1" {
    name = "ramanrgnew"
    location = "eastus"
}
resource "azurerm_subnet" "subnet" {
    name = "birjusubnet"
    virtual_network_name = "birjvnet"
    resource_group_name = "ramanrgnew"
    address_prefixes = ["10.0.0.0/24"]
}