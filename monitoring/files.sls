/etc/zabbix/zabbix-server.conf:
	file.managed:
		- source: salt://monitoring/files/etc/zabbix/zabbix_server.conf

/etc/my.cf
    file.managed:
        - source: salt://monitoring/files/etc/my.cf


/etc/monit.conf:
        file.managed:
                - source: salt://monitoring/files/etc/monit.conf

