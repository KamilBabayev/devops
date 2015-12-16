#{% from "zabbix/map.jinja" import zabbix with context %}
#{% from "zabbix/macros.jinja" import files_switch with context %}
#{% set settings = salt['pillar.get']('zabbix-mysql', {}) %}


include:
  - zabbix.mysql.conf


{% set dbhost = settings.get('dbhost', 'localhost') %}
{% set dbname = settings.get('dbname', 'zabbix') %}
{% set dbuser = settings.get('dbuser', 'zabbix') %}
{% set dbpass = settings.get('dbpass', 'zabbix') %}


{% for file in [
  '/home/new/salt/salt/monitoring/zabbix_imp/mysql/schema.sql',
  '/home/new/salt/salt/monitoring/zabbix_imp/mysql/data.sql',
  '/home/new/salt/salt/monitoring/zabbix_imp/mysql/images_mysql.sql'
] %}
{{ file }}:
  file:
    - managed
    - makedirs: True
    - source: {{ files_switch('zabbix', [ file ]) }}
  cmd:
    - run
    - name: /usr/bin/mysql -h {{ dbhost }} -u {{ dbuser }} --password={{ dbpass }} {{ dbname }} < {{ file }} && touch {{ file }}.applied
    - unless: test -f {{ file }}.applied
    - require:
      - file: {{ file }}
      - pkg: mysql-client
{% endfor %}


