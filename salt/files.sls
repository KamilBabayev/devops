/etc/salt/master:
        file.managed:
                - source: salt://salt/files/etc/salt/master

/etc/crontab:
        file.managed:
                - source: salt://etc/files/crontab

