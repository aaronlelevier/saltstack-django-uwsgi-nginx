include:
    - keys

aaron:
    user.present:
        - shell: /bin/bash
        - home: /home/aaron
        - groups:
            - sudo
    ssh_auth.present:
        - name: id_rsa
        - user: aaron
        - source: salt://keys/id_rsa.pub
        - require:
            - sls: keys
            - user: aaron