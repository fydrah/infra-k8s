Cluster playbooks
#################

Set of playbooks and roles used to deploy my 3 server cluster.

Specifications
##############

* There is no private network between the servers, so I had to connect
  them over WAN by using a VPN (ipsec in transport mode over vxlan)
* I use a IP failover, this IP switch in case of the master failure.
  To achieve this, there is a keepalived (it uses the private
  network), when the master change, a python script trigger the IP
  failover switch by using the Online API.
* This is a Kubernetes Cluster.

Deployment
##########

#. ``mirrors.yml`` --> Replaces the Online mirrors
#. ``lvm.yml`` --> Configures LVM
#. ``shell.yml`` --> Creates a custom bash prompt (different colors
   for lambda user and root)
#. ``interfaces.yml`` --> Deploys a VPN (ipsec over vxlan) between
   the servers. The IP address allocation follow the inventory order,
   so be careful.
#. ``iptables.yml`` --> Deploys iptables persistent rules
#. ``keepalived.yml`` --> Deploys keepalived and Online python script
#. ``glusterfs.yml`` --> Deploys GlusterFS and Heketi.
