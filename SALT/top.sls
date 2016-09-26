base:
  '*':
    - common

  'saltmaster':
    - salt

  'web':
    - common
    - nginx
    - monit
    - zabbixagent

  'monitoring':
    - mysql
    - zabbixserver
    - zabbixagent
