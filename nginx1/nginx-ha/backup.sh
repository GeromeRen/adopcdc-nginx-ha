#!/bin/bash
export PATH=~/.local/bin:$PATH
source ~/.bash_profile
#aws ec2 disassociate-address --public-ip {YourEIP}
aws ec2 associate-address --public-ip {YourEIP} --instance-id {YourInstanceID}
