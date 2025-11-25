ping:
	ansible webservers -i inventory.ini -m ping

remote-install:
	ansible-playbook playbook.yml -i inventory.ini --vault-password-file vault_pass

install-roles:
	ansible-galaxy install -r requirements.yml

deploy:
	ansible-playbook deploy_redmine.yml -i inventory.ini -v --vault-password-file vault_pass

install-datadog:
	ansible-playbook install_datadog.yml -i inventory.ini -v --vault-password-file vault_pass

edit-vault:
	ansible-vault edit group_vars/webservers/vault.yml