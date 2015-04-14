git:
    pkg.installed: []

bitbucket.org:
    ssh_known_hosts:
        - present
        - user: root
        - fingerprint: "bitbucket.org known_host fingerpring"

github.com:
    ssh_known_hosts:
        - present
        - user: root
        - fingerprint: "github.com known_host fingerpring"

git-website-prod:
    git.latest:
        - name: "ssh formatted git repo location"
        - rev: master
        - target: /opt/django
        - identity: /root/.ssh/id_rsa
        - require:
            - pkg: git
            - ssh_known_hosts: bitbucket.org