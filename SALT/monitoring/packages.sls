monitoring_packages:
    pkg.installed:
        - pkgs:
            - MySQL-python
            - mysql
            - zabbix-server
            - zabbix-server-mysql
            - zabbix-web-mysql
            - mysql-server
    service:
         - name: zabbix-server
         - name: mysqld
         - name: httpd
         - running
