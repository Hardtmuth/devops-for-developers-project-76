ping:
	ansible webservers -i inventory.ini -m ping

deploy:
	ansible-playbook playbook.yml -i inventory.ini

install-roles:
	ansible-galaxy install -r requirements.yml