ansible-galaxy install -r ../roles/requirements.yml --force -p ../roles 
ansible-playbook -v -b -i ../inventories/testservers.yml patch_servers.yml -e '{"targets":"virtual_servers", ovirt_guest_install: "false"}'
rm -rf ../roles/ansible_roles
