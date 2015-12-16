monitoring_packages:
        pkg.installed:
            - pkgs:
                - zabbix-server
                - zabbix-server-mysql
                - zabbix-web-mysql
                - mysql-server
		- MySQL-python
                - monit
        service
	    - running
