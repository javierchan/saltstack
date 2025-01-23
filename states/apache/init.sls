apache-package:
  pkg.installed:
    - name: apache2

apache-service:
  service.running:
    - name: apache2
    - enable: True