###############################################
##
##  Copyright (2019, ) Institute of Software
##      Chinese Academy of Sciences
##          wuheng@iscas.ac.cn
##
###############################################

systemctl start openvswitch
systemctl enable openvswitch
systemctl start ovn-controller
systemctl enable ovn-controller

master=$(cat /root/.kube/config  | grep server | awk -F":" '{print$3}' | awk -F"//" '{print$2}')
thisip=$(ip a | grep "br-native" | grep inet | awk '{print$2}' |awk -F"/" '{print$1}')

sudo ovs-vsctl set open . external-ids:ovn-bridge=br-int
sudo ovs-vsctl set open . external-ids:ovn-remote=tcp:$master:6642
sudo ovs-vsctl set open . external-ids:ovn-encap-type=geneve,vxlan
sudo ovs-vsctl set open . external-ids:ovn-encap-ip=$thisip
