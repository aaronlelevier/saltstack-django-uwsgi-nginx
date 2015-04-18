Install
-------
- Install all dependencies from: http://docs.saltstack.com/en/latest/topics/installation/ubuntu.html 
on the salt master server named `salt`

- Install all dependencies from above except `salt-master` on a server name `minion`

- On the `minion` server, change the `/etc/salt/minion` file:
`# master: salt`
to
`master: <ip addrs of master>`

- Restart salt-minion: `service salt-minion restart`

- Test on salt master server: `salt '*' test.ping`


Common Commands
---------------
# get all IP addresses for master and minions
salt '*' network.ip_addrs

# send state to all
salt '*' state.sls <state_name>

# send out `highstate` from /srv/salt/top.sls
salt '*' state.highstate
[note: the '*' is always an arg, so if I want to send out state to only certain
minions, then I would just name them there instead of '*']

# show accepted server keys
salt-key -L

# run commands accross servers
salt '*' cmd.run 'ls -l /etc'


Minion
------
# issue commands from the salt-minion server to see full output using:
salt-call <commands...>


Grains
------ 
# sync minion grains on start
http://docs.saltstack.com/en/latest/topics/reactor/index.html#minion-start-reactor

# reload grains
salt '*' saltutil.sync_grains

or

salt '*' state.highstate

note
    if keys or _grains dir isn't correctly created, won't raise erros, but key/values will be missing from:
        `salt '*' grains.items`

# ping all servers that have a "grain role of appserver"
salt -G 'roles:appserver' test.ping


Pillar
------
# walkthrough:
http://docs.saltstack.com/en/latest/topics/tutorials/pillar.html

# using Env VARs
https://groups.google.com/forum/#!msg/salt-users/u9vylJ_R0x0/89qI7MkrU3YJ

# refresh data
salt '*' saltutil.refresh_pillar

# get all data
salt '*' pillar.items


Salt Cloud
----------
# create VMs based on Profiders/Profiles/Map File
salt-cloud -P -m /etc/salt/cloud.maps.d/map-file.map

    Notes
        -P = create in parallel
        -m = call map file

# destroy VMs using Map File
salt-cloud -d -m /etc/salt/cloud.maps.d/map-file.map