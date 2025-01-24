nginx-package:
  pkg.installed:
    - name: nginx

nginx-service:
  service.running:
    - name: nginx
    - enable: True

nginx-config:
  file.managed:
    - name: /etc/nginx/sites-available/default
    - source: salt://nginx/config.jinja
    - user: root
    - group: root
    - mode: 644