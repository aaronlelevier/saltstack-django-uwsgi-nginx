aws cli install
    apt-get install awscli

aws vpc config
    1. add new security group (security group option is on left hand side navigation)
        - inbound rules: add TCP port 22, source: 0.0.0.0/0

ec2 Keypairs
    cmd: ssh-keygen -f /etc/salt/my_salt_cloud_key -t rsa -b 4096
        press enter, enter to skip passphrase

    