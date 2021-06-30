# oracle-host-prep

Automation to build a database host.

Note: The Ansible Helper can be found here: [ansible-helper](https://github.com/mminichino/ansible-helper)

````
$ ansible-helper.py prep-db-host.yaml -h host_or_ip --cloud gcp --bucket software-depot --key access_key --secret secret_key --swap /dev/sdc
````
