#!/usr/bin/env bash

sudo apt update
sudo apt upgrade -y
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt update
sudo apt install -y curl wget git software-properties-common ansible
