base:
  '*':
    - common

  'saltmaster':
    - salt
    - nginx    

  'web':
    - common
    - nginx
    - monit
    - zabbixagent

  'monitoring':
    - nginx
    - mysql
    - zabbixserver
    - zabbixagent
