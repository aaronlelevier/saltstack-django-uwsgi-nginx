~/.ssh/id_rsa.pub:
    file.managed:
        - user: root
        - group: root
        - mode: 0644
        - source: salt://keys/id_rsa.pub