#!/usr/bin/env bash

play() {
	ansible-playbook -i inventory -c paramiko --ask-pass --ask-become-pass $1
}

play playbook-setup.yml
play playbook-deploy.yml
