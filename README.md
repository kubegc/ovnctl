# kubeOVN
SDN for Kubernetes network

## authors:

- wuheng@otcaix.iscas.ac.cn
- wuyuewen@otcaix.iscas.ac.cn

# 1. Features

- **IPv4**/IPv6
- **vlan**, vxlan, **geneve**
- **fixed IP/floating IP**
- **static IP/dynamic IP**
- **ACL**
- QoS
- CNI

# 2. Roadmap

- Support geneve/IPv4 [1.x]
  - ~~support vlan [1.1.0]~~
  - ~~support floating ip [1.2.0]~~
  - ~~upport ACL [1.3.0]~~
  - support QoS [1.4.0]
  - production ready [1.5.0]
- Support vxlan [2.x]
- Support CNI [3.x]
- Support IPv6 [4.x]

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

- ACLS:
  - http://blog.spinhirne.com/2016/10/ovn-and-acls.html

