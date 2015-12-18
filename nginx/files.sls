/etc/nginx/nginx.conf:
        file.managed:
		- user: nginx
		- group: nginx
		- more: 0644
                - source: salt://web/files/etc/nginx/nginx.conf

