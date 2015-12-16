monitoring_packages:
        pkg.installed:
            - pkgs:
                - zabbix-server
                - zabbix-server-mysql
                - zabbix-web-mysql
                - mysql-server
                - mysql
		- MySQL-python
                - monit
        service
	    - running
