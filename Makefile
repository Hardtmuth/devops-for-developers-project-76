ping:
	ansible webservers -i inventory.ini -m ping

remote-install:
	ansible-playbook playbook.yml -i inventory.ini

install-roles:
	ansible-galaxy install -r requirements.yml

deploy:
	ansible-playbook deploy_redmine.yml -i inventory.ini -v