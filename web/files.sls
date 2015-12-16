/etc/zabbix/zabbix-agent.conf:
	file.managed:
		- source: salt://web/files/etc/zabbix/zabbix_agent.conf

/etc/nginx/nginx.conf:
        file.managed:
		- user: nginx
		- group: nginx
		- more: 0644
                - source: salt://web/files/etc/nginx/nginx.conf


/etc/monit.conf:
        file.managed:
                - source: salt://web/files/etc/monit.conf

