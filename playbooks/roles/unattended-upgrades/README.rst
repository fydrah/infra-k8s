##################
unatented-upgrades
##################

Configure ``unattended-upgrades`` on a debian-based system.

Maintainer
==========

Gauvain Pocentek <gauvain.pocentek@objectif-libre.com>

Requirements
============

None

Role Vars
=========

``unattended_upgrades_origins``
    List of repositories to pull updates from. Default: ['security']

``unattended_upgrades_blacklist``
    List of packages that should not be updated. Default: []

Dependencies
============

None

Distribution Support
====================

.. csv-table::
   :header: Distribution,Supported,Tested

   Ubuntu 16.04,Yes,Manual

Playbook examples
=================

.. code-block:: yaml

   - hosts: all
     become: yes
     roles:
       - unattended-upgrades
