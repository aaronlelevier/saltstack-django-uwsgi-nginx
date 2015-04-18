# get running processes
ps --sort -rss -eo rss,pid,command | head

# free memory
free -m

# copy all contents from one Dir to a second
cp dir1/* dir2


ssh
---
# generate ssh key
ssh-keygen -t rsa -C "your_email@example.com"

# start ssh-agent and assign
eval "$(ssh-agent -s)"
ssh-add <path_to_key>

# get ssh rsa fingerprint
ssh-keygen -lf ~/.ssh/id_rsa.pub

# required permissions for private / public keys
chmod 0400 <key>


ports
-----
# kill pid using port # 8000
fuser -k 8000/tcp

# kill using pid #
kill -9 pid


nginx
-----
# make unix websocket executable
chomod 0666 mysite.sock

uWSGI
-----
# test app runs
# CWD (working dir) needs to be=> /opt/django
uwsgi --socket mysite.sock --wsgi-file /opt/django/mysite.wsgi --chmod-socket=666

# test `ini` file
uwsgi --ini /opt/django/uwsgi.ini