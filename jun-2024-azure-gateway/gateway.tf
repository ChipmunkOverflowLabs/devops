resource "azurerm_resource_group" "netRg" {
  name     = var.resourceGroupName
  location = var.azureRegion
}

resource "azurerm_virtual_network" "gatewayVnet" {
  name                = "appgateway-vnet"
  resource_group_name = azurerm_resource_group.netRg.name
  location            = azurerm_resource_group.netRg.location
  address_space       = ["10.1.0.0/16"]
}

resource "azurerm_subnet" "gatewaySubnet" {
  name                 = "gateway-subnet"
  resource_group_name  = azurerm_resource_group.netRg.name
  virtual_network_name = azurerm_virtual_network.gatewayVnet.name
  address_prefixes     = ["10.1.1.0/24"]
}

resource "azurerm_public_ip" "gatewayIp" {
  name                = "appgateway-ip"
  resource_group_name = azurerm_resource_group.netRg.name
  location            = azurerm_resource_group.netRg.location
  allocation_method   = "Static"
  sku                 = "Standard"
}

resource "azurerm_application_gateway" "appGateway" {
  name                = "production-app-gateway"
  resource_group_name = azurerm_resource_group.netRg.name
  location            = azurerm_resource_group.netRg.location

  sku {
    name     = var.gatewaySkuName
    tier     = "Standard_v2"
    capacity = 2
  }

  gateway_ip_configuration {
    name      = "gateway-ip-config"
    subnet_id = azurerm_subnet.gatewaySubnet.id
  }

  frontend_port {
    name = "frontend-port"
    port = 80
  }

  frontend_ip_configuration {
    name                 = "frontend-ip-config"
    public_ip_address_id = azurerm_public_ip.gatewayIp.id
  }

  backend_address_pool {
    name = "backend-pool"
  }

  backend_http_settings {
    name                  = "http-settings"
    cookie_based_affinity = "Disabled"
    port                  = 80
    protocol              = "Http"
    request_timeout       = 60
  }

  http_listener {
    name                           = "http-listener"
    frontend_ip_configuration_name = "frontend-ip-config"
    frontend_port_name             = "frontend-port"
    protocol                       = "Http"
  }

  request_routing_rule {
    name                       = "routing-rule-1"
    rule_type                  = "Basic"
    http_listener_name         = "http-listener"
    backend_address_pool_name  = "backend-pool"
    backend_http_settings_name = "http-settings"
    priority                   = 100
  }
}
