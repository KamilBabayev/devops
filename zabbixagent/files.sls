/etc/zabbix/zabbix_agent.conf:
        file.managed:
            - source: salt://etc/zabbix_agent.conf

