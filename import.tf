 /*

import {
  to = azurerm_resource_group.RG_Name
  id = "/subscriptions/480dd862-f5d4-4580-bac3-b70384f25eb0/resourceGroups/Boomi-Stage-RG"
}

import {
  to = azurerm_virtual_network.Vnets
  id = "/subscriptions/480dd862-f5d4-4580-bac3-b70384f25eb0/resourceGroups/Boomi-Stage-RG/providers/Microsoft.Network/virtualNetworks/Boomi-Stage-Vnet"
}

import {
  to = azurerm_linux_virtual_machine.VM01
  id = "/subscriptions/480dd862-f5d4-4580-bac3-b70384f25eb0/resourceGroups/Boomi-Stage-RG/providers/Microsoft.Compute/virtualMachines/Boomi-ST-API01"
}

import {
  to = azurerm_network_interface.Name_NIC_01
  id = "/subscriptions/480dd862-f5d4-4580-bac3-b70384f25eb0/resourceGroups/Boomi-Stage-RG/providers/Microsoft.Network/networkInterfaces/Boomi-ST-API01-nic"
}

import {
  to = azurerm_network_security_group.VM_NSG_01
  id = "/subscriptions/480dd862-f5d4-4580-bac3-b70384f25eb0/resourceGroups/Boomi-Stage-RG/providers/Microsoft.Network/networkSecurityGroups/Boomi-ST-API01-nsg"
}

import {
  to = azurerm_managed_disk.disks_01
  id = "/subscriptions/480dd862-f5d4-4580-bac3-b70384f25eb0/resourceGroups/Boomi-Stage-RG/providers/Microsoft.Compute/disks/ST-API01-boomiapi-disk"
}

import {
  to = azurerm_linux_virtual_machine.VM02
  id = "/subscriptions/480dd862-f5d4-4580-bac3-b70384f25eb0/resourceGroups/Boomi-Stage-RG/providers/Microsoft.Compute/virtualMachines/Boomi-ST-API02"
}

import {
  to = azurerm_network_interface.Name_NIC_02
  id = "/subscriptions/480dd862-f5d4-4580-bac3-b70384f25eb0/resourceGroups/Boomi-Stage-RG/providers/Microsoft.Network/networkInterfaces/Boomi-ST-API02-nic"
}
import {
  to = azurerm_network_security_group.VM_NSG_02
  id = "/subscriptions/480dd862-f5d4-4580-bac3-b70384f25eb0/resourceGroups/Boomi-Stage-RG/providers/Microsoft.Network/networkSecurityGroups/Boomi-ST-API02-nsg"
}

import {
  to = azurerm_managed_disk.disks_02
  id = "/subscriptions/480dd862-f5d4-4580-bac3-b70384f25eb0/resourceGroups/Boomi-Stage-RG/providers/Microsoft.Compute/disks/ST-API02-boomiapi-disk"
}

import {
  to = azurerm_linux_virtual_machine.VM03
  id = "/subscriptions/480dd862-f5d4-4580-bac3-b70384f25eb0/resourceGroups/Boomi-Stage-RG/providers/Microsoft.Compute/virtualMachines/Boomi-ST-MOL01"
}

import {
  to = azurerm_network_interface.Name_NIC_03
  id = "/subscriptions/480dd862-f5d4-4580-bac3-b70384f25eb0/resourceGroups/Boomi-Stage-RG/providers/Microsoft.Network/networkInterfaces/Boomi-ST-MOL01-nic"
}

import {
  to = azurerm_network_security_group.VM_NSG_03
  id = "/subscriptions/480dd862-f5d4-4580-bac3-b70384f25eb0/resourceGroups/Boomi-Stage-RG/providers/Microsoft.Network/networkSecurityGroups/Boomi-ST-MOL01-nsg"
}

import {
  to = azurerm_managed_disk.disks_03
  id = "/subscriptions/480dd862-f5d4-4580-bac3-b70384f25eb0/resourceGroups/Boomi-Stage-RG/providers/Microsoft.Compute/disks/ST-MOL01-boomimol-disk"
}

import {
  to = azurerm_linux_virtual_machine.VM04
  id = "/subscriptions/480dd862-f5d4-4580-bac3-b70384f25eb0/resourceGroups/Boomi-Stage-RG/providers/Microsoft.Compute/virtualMachines/Boomi-ST-MOL02"
}

import {
  to = azurerm_network_interface.Name_NIC_04
  id = "/subscriptions/480dd862-f5d4-4580-bac3-b70384f25eb0/resourceGroups/Boomi-Stage-RG/providers/Microsoft.Network/networkInterfaces/Boomi-ST-MOL02-nic"
}

import {
  to = azurerm_network_security_group.VM_NSG_04
  id = "/subscriptions/480dd862-f5d4-4580-bac3-b70384f25eb0/resourceGroups/Boomi-Stage-RG/providers/Microsoft.Network/networkSecurityGroups/Boomi-ST-MOL02-nsg"
}

import {
  to = azurerm_managed_disk.disks_04
  id = "/subscriptions/480dd862-f5d4-4580-bac3-b70384f25eb0/resourceGroups/Boomi-Stage-RG/providers/Microsoft.Compute/disks/ST-MOL02-boomimol-disk"
}

import {
  to = azurerm_mssql_server.sql_server
  id = "/subscriptions/480dd862-f5d4-4580-bac3-b70384f25eb0/resourceGroups/Boomi-Stage-RG/providers/Microsoft.Sql/servers/boomistagesqlserver0011"
}

import {
  to = azurerm_private_endpoint.private_endpoint_DB
  id = "/subscriptions/480dd862-f5d4-4580-bac3-b70384f25eb0/resourceGroups/Boomi-Stage-RG/providers/Microsoft.Network/privateEndpoints/boomistagedb-endpoint"
}

import {
  to = azurerm_sql_database.sql_database
  id = "/subscriptions/480dd862-f5d4-4580-bac3-b70384f25eb0/resourceGroups/Boomi-Stage-RG/providers/Microsoft.Sql/servers/boomistagesqlserver0011/databases/Boomi-Stage-DB"
}

import {
  to = azurerm_private_dns_zone.private_dns_zone_DB
  id = "/subscriptions/480dd862-f5d4-4580-bac3-b70384f25eb0/resourceGroups/boomi-stage-rg/providers/Microsoft.Network/privateDnsZones/privatelink.database.windows.net"
}

import {
  to = azurerm_storage_account.Storage_Account
  id = "/subscriptions/480dd862-f5d4-4580-bac3-b70384f25eb0/resourceGroups/Boomi-Stage-RG/providers/Microsoft.Storage/storageAccounts/boomistagestorage00123"
}

import {
  to = azurerm_storage_share.storage_share_01
  id = "https://boomistagestorage00123.file.core.windows.net/boomi-st-api-ss"
}

import {
  to = azurerm_storage_share.storage_share_02
  id = "https://boomistagestorage00123.file.core.windows.net/boomi-st-mol-ss"
}

import {
  to = azurerm_private_endpoint.private_endpoint_ST
  id = "/subscriptions/480dd862-f5d4-4580-bac3-b70384f25eb0/resourceGroups/Boomi-Stage-RG/providers/Microsoft.Network/privateEndpoints/private_endpoint_1"
}

import {
  to = azurerm_private_dns_zone.private_dns_zone_ST
  id = "/subscriptions/480dd862-f5d4-4580-bac3-b70384f25eb0/resourceGroups/boomi-stage-rg/providers/Microsoft.Network/privateDnsZones/privatelink.file.core.windows.net"
}

import {
  to = azurerm_lb.external_loadbalancer
  id = "/subscriptions/480dd862-f5d4-4580-bac3-b70384f25eb0/resourceGroups/Boomi-Stage-RG/providers/Microsoft.Network/loadBalancers/external-LB"
}

import {
  to = azurerm_public_ip.public_ip
  id = "/subscriptions/480dd862-f5d4-4580-bac3-b70384f25eb0/resourceGroups/Boomi-Stage-RG/providers/Microsoft.Network/publicIPAddresses/Boomi-ST-API-LB-pip"
}

import {
  to = azurerm_lb_probe.health_probe
  id = "/subscriptions/480dd862-f5d4-4580-bac3-b70384f25eb0/resourceGroups/Boomi-Stage-RG/providers/Microsoft.Network/loadBalancers/external-LB/probes/health-01"
}

 */












