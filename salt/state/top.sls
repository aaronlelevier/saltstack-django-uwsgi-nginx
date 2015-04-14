base:
    # main django/pip reqs, apt-get packages
    '*':
        - django
        - packages

    # main django application server
    'salt':
        - nginx

    # postres db server
    'minion':
        - postgres