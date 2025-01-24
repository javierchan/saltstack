install-base-packages:
  pkg.installed:
    - pkgs:
      - vim
      - curl
      - wget

set-timezone:
  timezone.system:
    - name: UTC

set-ntp:
  service.running:
    - name: ntp
    - enable: True