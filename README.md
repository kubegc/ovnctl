# kubeOVN
SDN for Kubernetes network


# 1. References

- http://blog.spinhirne.com/2016/10/ovn-and-acls.html
- https://zhaozhanxu.com/2017/02/22/SDN/OVN/2017-02-22-ovn-nbdb/
- http://blog.spinhirne.com/2016/09/an-introduction-to-ovn-routing.html
- https://developers.redhat.com/blog/2018/09/03/ovn-dynamic-ip-address-management/
- https://blog.scottlowe.org/2016/12/09/using-ovn-with-kvm-libvirt/
- http://dani.foroselectronica.es/simple-ovn-setup-in-5-minutes-491/
- https://www.li-rui.top/2018/12/16/network/ovn%E5%AD%90%E7%BD%91%E4%BB%A5%E5%8F%8A%E4%B8%89%E5%B1%82%E7%BD%91%E5%85%B3/
- https://blog.csdn.net/zhengmx100/article/details/72822530
- http://blog.spinhirne.com/2016/09/the-ovn-gateway-router.html
- https://www.li-rui.top/2018/12/16/network/ovn%E5%AD%90%E7%BD%91%E4%BB%A5%E5%8F%8A%E4%B8%89%E5%B1%82%E7%BD%91%E5%85%B3/
- https://upcloud.com/community/tutorials/how-to-configure-floating-ip-on-centos/

# 2. Some commands

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
