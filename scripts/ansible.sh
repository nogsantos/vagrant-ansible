#! /bin/bash

set -e

yum -y update
yum -y install epel-release
yum -y install ansible
