###############################################
##
##  Copyright (2019, ) Institute of Software
##      Chinese Academy of Sciences
##          wuheng@iscas.ac.cn
##
###############################################

systemctl start openvswitch
systemctl enable openvswitch
systemctl start ovn-ovsdb
systemctl enable ovn-ovsdb
systemctl start ovn-northd
systemctl enable ovn-northd
systemctl start ovn-controller
systemctl enable ovn-controller

sudo ovs-vsctl set open . external-ids:ovn-bridge=br-int
sudo ovs-vsctl set open . external-ids:ovn-remote=unix:/usr/var/run/openvswitch/ovnsb_db.sock
sudo ovs-vsctl set open . external-ids:ovn-encap-ip=127.0.0.1
sudo ovs-vsctl set open . external-ids:ovn-encap-type=geneve,vxlan
