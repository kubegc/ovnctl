# kubeOVN
SDN for Kubernetes network

## authors:

- wuheng@otcaix.iscas.ac.cn
- wuyuewen@otcaix.iscas.ac.cn

# 1. Features

- VPC
- vlan
- static IP
- floating IP

# 2. Roadmap

- ~~support vlan [1.1.0]~~
- ~~support floating ip [1.2.0]~~
- ~~support ACL~~ [1.3.0]
- all support router [1.4.0]

# Books

- https://feisky.gitbooks.io/sdn/ovs/ovn-internal.html

# 4. References

- Basic:
  - http://blog.spinhirne.com/2016/10/ovn-and-acls.html
  - https://zhaozhanxu.com/2017/02/22/SDN/OVN/2017-02-22-ovn-nbdb/
  - https://developers.redhat.com/blog/2018/09/03/ovn-dynamic-ip-address-management/
  - https://blog.scottlowe.org/2016/12/09/using-ovn-with-kvm-libvirt/
  - http://dani.foroselectronica.es/simple-ovn-setup-in-5-minutes-491/
  - https://www.li-rui.top/2018/12/16/network/ovn%E5%AD%90%E7%BD%91%E4%BB%A5%E5%8F%8A%E4%B8%89%E5%B1%82%E7%BD%91%E5%85%B3/
  - https://blog.csdn.net/mergerly/article/details/54866230
  - https://hechao.li/2018/05/15/VXLAN-Hands-on-Lab/

- Floating IP:
  - https://segmentfault.com/a/1190000020311817
  - https://www.sdnlab.com/19802.html
  - https://www.cnblogs.com/silvermagic/p/7666124.html

# 5. Some commands

```
ip netns add net1
ip link
ip link set mac1@br-native netns net1
ip link set mac1 netns net1
ip netns exec net1 ip link
ip netns exec net1 ip link set mac1 name eth0
ip netns exec net1 ip link
ip netns exec net1 ip addr add 133.133.134.178/16 dev eth0
ip netns exec net1 ip link set eth0 up

ovn-nbctl -- --id=@nat create nat type="dnat_and_snat" logical_ip=192.168.4.7 external_ip=133.133.134.178 -- add logical_router r4ls1 nat @nat
ovn-nbctl lrp-set-gateway-chassis rp4ls1 d9ff5bef-2db0-4867-a00c-7459cbb4c772(ovn-sbctl)
```


```
iptables -t nat -L -n --line-numbers
iptables -t nat -A POSTROUTING  -s 192.168.5.10/32 -j SNAT --to-source 133.133.134.189
iptables -t nat -A PREROUTING  -d 133.133.134.189/32 -j DNAT --to-destination 192.168.5.10

iptables -t nat  -D PREROUTING  [num]
iptables -t nat  -D POSTROUTING [num]
```

```
iptables -t nat -A POSTROUTING -s 192.168.5.10/32 -o br-native:1 -j SNAT --to-source 133.133.134.189
route add -net 192.168.5.10 netmask 255.255.255.255 dev br-native:1
```
