# kubeOVN
SDN for Kubernetes network


# Usage

## DHCP

```
ovn-nbctl create DHCP_Options cidr=192.168.1.0/24 options="\"lease_time\"=\"3600\" \"router\"=\"192.168.1.1\" \"server_id\"=\"192.168.1.128\" \"server_mac\"=\"52:54:00:c1:69:40\""
8d92c738-bab9-473e-b34f-7a9d89cbd1a8
ovn-nbctl lsp-set-dhcpv4-options ls1-vm1 8d92c738-bab9-473e-b34f-7a9d89cbd1a8
```
