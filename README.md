# kubeOVN
SDN for Kubernetes network


# 1. Usage

## 1.1 DHCP

### 1.1.1 Config
```
ovn-nbctl create DHCP_Options cidr=192.168.1.0/24 options="\"lease_time\"=\"3600\" \"router\"=\"192.168.1.1\" \"server_id\"=\"192.168.1.128\" \"server_mac\"=\"52:54:00:c1:69:40\""
8d92c738-bab9-473e-b34f-7a9d89cbd1a8
ovn-nbctl lsp-set-dhcpv4-options ls1-vm1 8d92c738-bab9-473e-b34f-7a9d89cbd1a8
```

### 1.1.2 Comamnds

```
DHCP Options commands:
  dhcp-options-create CIDR [EXTERNAL_IDS]
                           create a DHCP options row with CIDR
  dhcp-options-del DHCP_OPTIONS_UUID
                           delete DHCP_OPTIONS_UUID
  dhcp-options-list        
                           lists the DHCP_Options rows
  dhcp-options-set-options DHCP_OPTIONS_UUID  KEY=VALUE [KEY=VALUE]...
                           set DHCP options for DHCP_OPTIONS_UUID
  dhcp-options-get-options DHCO_OPTIONS_UUID 
                           displays the DHCP options for DHCP_OPTIONS_UUID
```

## 1.2 Router

### 1.2.1 Config

```
```

### 1.2.2 Commands

```
lr-add [ROUTER]           create a logical router named ROUTER
lr-del ROUTER             delete ROUTER and all its ports
lr-list                   print the names of all logical routers
lrp-add ROUTER PORT MAC NETWORK... [peer=PEER]
                            add logical port PORT on ROUTER
lrp-set-gateway-chassis PORT CHASSIS [PRIORITY]
                            set gateway chassis for port PORT
lrp-del-gateway-chassis PORT CHASSIS
                            delete gateway chassis from port PORT
lrp-get-gateway-chassis PORT
                            print the names of all gateway chassis on PORT
                            with PRIORITY
lrp-del PORT              delete PORT from its attached router
lrp-list ROUTER           print the names of all ports on ROUTER
lrp-set-enabled PORT STATE
                            set administrative state PORT
                            ('enabled' or 'disabled')
lrp-get-enabled PORT      get administrative state PORT
                            ('enabled' or 'disabled')
```

## 1.3 Switch

### 1.3.1 Config

```
```

### 1.3.2 Commands


```
ls-add [SWITCH]           create a logical switch named SWITCH
ls-del SWITCH             delete SWITCH and all its ports
ls-list                   print the names of all logical switches
lsp-add SWITCH PORT       add logical port PORT on SWITCH
lsp-add SWITCH PORT PARENT TAG
                            add logical port PORT on SWITCH with PARENT
                            on TAG
lsp-del PORT              delete PORT from its attached switch
lsp-list SWITCH           print the names of all logical ports on SWITCH
lsp-get-parent PORT       get the parent of PORT if set
lsp-get-tag PORT          get the PORT's tag if set
lsp-set-addresses PORT [ADDRESS]...
                            set MAC or MAC+IP addresses for PORT.
lsp-get-addresses PORT    get a list of MAC or MAC+IP addresses on PORT
lsp-set-port-security PORT [ADDRS]...
                            set port security addresses for PORT.
lsp-get-port-security PORT    get PORT's port security addresses
lsp-get-up PORT           get state of PORT ('up' or 'down')
lsp-set-enabled PORT STATE
                            set administrative state PORT
                            ('enabled' or 'disabled')
lsp-get-enabled PORT      get administrative state PORT
                            ('enabled' or 'disabled')
lsp-set-type PORT TYPE    set the type for PORT
lsp-get-type PORT         get the type for PORT
lsp-set-options PORT KEY=VALUE [KEY=VALUE]...
                            set options related to the type of PORT
lsp-get-options PORT      get the type specific options for PORT
lsp-set-dhcpv4-options PORT [DHCP_OPTIONS_UUID]
                            set dhcpv4 options for PORT
lsp-get-dhcpv4-options PORT  get the dhcpv4 options for PORT
lsp-set-dhcpv6-options PORT [DHCP_OPTIONS_UUID]
                            set dhcpv6 options for PORT
lsp-get-dhcpv6-options PORT  get the dhcpv6 options for PORT
```

## 1.4 NAT

### 1.4.1 Config

```
```

### 1.4.2 Commands


```
NAT commands:
  lr-nat-add ROUTER TYPE EXTERNAL_IP LOGICAL_IP [LOGICAL_PORT EXTERNAL_MAC]
                            add a NAT to ROUTER
  lr-nat-del ROUTER [TYPE [IP]]
                            remove NATs from ROUTER
  lr-nat-list ROUTER        print NATs for ROUTER
```

## 1.5 LB

### 1.5.1 Config

```
```

### 1.5.2 Commands


```
LB commands:
  lb-add LB VIP[:PORT] IP[:PORT]... [PROTOCOL]
                            create a load-balancer or add a VIP to an
                            existing load balancer
  lb-del LB [VIP]           remove a load-balancer or just the VIP from
                            the load balancer
  lb-list [LB]              print load-balancers
  lr-lb-add ROUTER LB       add a load-balancer to ROUTER
  lr-lb-del ROUTER [LB]     remove load-balancers from ROUTER
  lr-lb-list ROUTER         print load-balancers
  ls-lb-add SWITCH LB       add a load-balancer to SWITCH
  ls-lb-del SWITCH [LB]     remove load-balancers from SWITCH
  ls-lb-list SWITCH         print load-balancers
```


# 2. References

- https://zhaozhanxu.com/2017/02/22/SDN/OVN/2017-02-22-ovn-nbdb/
- http://blog.spinhirne.com/2016/09/an-introduction-to-ovn-routing.html
- https://developers.redhat.com/blog/2018/09/03/ovn-dynamic-ip-address-management/
