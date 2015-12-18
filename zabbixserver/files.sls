/etc/zabbix/zabbix_server.conf:
  file.managed:
    - source: salt://etc/zabbix_server.conf

#/etc/yum.repos.d/zabbix.repo:
#    file.managed:
#        - source: salt://etc/zabbix.repo

