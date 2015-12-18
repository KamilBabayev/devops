/etc/hosts:
  file.managed:
    - source: salt://etc/hosts

/etc/salt/master:
  file.managed:
    - source: salt://etc/master
