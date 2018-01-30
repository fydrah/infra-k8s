######
Heketi
######

Deploy Heketi, an API REST for managing glusterfs volumes.

Maintainer
==========

Matthieu Gaignière <matthieu.gaigniere@objectif-libre.com>

Requirements
============

None

Role Vars
=========

* ``heketi_version``
* ``heketi_download_url`` : link to a tar.gz archive from Github realeases
* ``heketi_glusterfs_group`` : name of the ansible group that contains glusterfs hosts

Dependencies
============

None

Distribution Support
====================

.. csv-table::
   :header: Distribution,Supported,Tested

   Ubuntu 16.04,Yes,Yes
   CentOS 7,No,No

Playbook examples
=================

.. code-block:: yaml

   - hosts: glusterfs
     become: yes
     roles:
       - glusterfs

   - hosts: heketi
     become: yes
     roles:
       - heketi
