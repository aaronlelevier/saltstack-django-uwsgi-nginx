include:
    - packages
  
django:
    pip.installed:
        - requirements: salt://django/requirements.txt
        - require: 
            - sls: packages