httpd:
   - pkg:
      - installed

apache:
  service.running
    - name: httpd
    - enable: True
    - sig: httpd
