zabbix:
    mysql_database.present:
        - name:  zabbix
    mysql_user.present:
        - name: zabbix
        - password: zabbix
    mysql_grants.present:
        - database: zabbix.*
        - grant: ALL PRIVILEGES
        - user: zabbix
