pg_pkgs:
    pkg.installed:
        - pkgs: 
            - postgresql-9.3
            - postgresql-contrib
            - postgresql-client
            - postgresql-server-dev-9.3

db:
    postgres_database.present:
        - name: textra_17
        - db_user: postgres
        - db_password: postgres
        - db_port: 5432
        - user: postgres