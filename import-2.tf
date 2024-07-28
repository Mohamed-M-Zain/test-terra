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
