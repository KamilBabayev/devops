web_packages:
  pkg.installed:
    - pkgs:
      - nginx
      - zabbix-agent
      - monit
  service:
    - running
