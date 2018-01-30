# GlusterFS cluster

Deploys a GlusterFS cluster.

## Requirements

None

## Role Vars

``glusterfs_default_brick default("/data/brick")``
    Directory where bricks will be stored.
``glusterfs_volumes (default: [])``
    List of volumes to create and start.
``glusterfs_interface_fact``
    Ansible fact that can be used to select a specific network interface for peer probe.

## Dependencies

None

## Playbook examples

Simple:

```yaml
   - hosts: glusterfs
     become: yes
     roles:
       - glusterfs
```

With volume creation. ``glusterfs_default_brick`` is already definied and you can use it by default:

```yaml
   - hosts: glusterfs
     become: yes
     roles:
       - role: glusterfs
         glusterfs_volumes:
           - "{{ glusterfs_default_brick }}/myvol1"
           - "{{ glusterfs_default_brick }}/myvol2"
```

With a specific network interface for peer probe:

```yaml
   - hosts: glusterfs
     become: yes
     roles:
       - role: glusterfs
         glusterfs_default_brick: "/data/brick"
         glusterfs_volumes:
           - "{{ glusterfs_default_brick }}/myvol1"
           - "{{ glusterfs_default_brick }}/myvol2"
         glusterfs_interface_fact: ansible_ens4
```
