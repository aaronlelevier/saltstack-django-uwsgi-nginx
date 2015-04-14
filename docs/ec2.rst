ec2 / salt notes
----------------
follow this <a href="https://www.linux.com/learn/tutorials/772719-how-to-provision-aws-ec2-instances-with-salt-cloud">blog</a>

**User Permissions**
go to IAM User mgmt area
get access-id and secret
    add these when running `aws configure` from the CLI
attach a policy to the user for admin rights