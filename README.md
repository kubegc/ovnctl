# kubeOVN
SDN for Kubernetes network


# 1. Usage

## 1.1 DHCP

```
ovn-nbctl create DHCP_Options cidr=192.168.1.0/24 options="\"lease_time\"=\"3600\" \"router\"=\"192.168.1.1\" \"server_id\"=\"192.168.1.128\" \"server_mac\"=\"52:54:00:c1:69:40\""
8d92c738-bab9-473e-b34f-7a9d89cbd1a8
ovn-nbctl lsp-set-dhcpv4-options ls1-vm1 8d92c738-bab9-473e-b34f-7a9d89cbd1a8
```

# 2. References

- https://zhaozhanxu.com/2017/02/22/SDN/OVN/2017-02-22-ovn-nbdb/
- http://blog.spinhirne.com/2016/09/an-introduction-to-ovn-routing.html
- https://developers.redhat.com/blog/2018/09/03/ovn-dynamic-ip-address-management/
