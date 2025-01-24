apache-package:
  pkg.installed:
    - name: apache2

apache-service:
  service.running:
    - name: apache2
    - enable: True

apache-config:
  file.managed:
    - name: /etc/apache2/apache2.conf
    - source: salt://apache/config.jinja
    - user: root
    - group: root
    - mode: 644