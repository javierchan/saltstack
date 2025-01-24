create-user:
  user.present:
    - name: saltuser
    - fullname: Salt User
    - groups:
      - sudo
      - developers

set-ssh-key:
  file.managed:
    - name: /home/saltuser/.ssh/authorized_keys
    - source: salt://users/ssh.jinja
    - user: saltuser
    - group: saltuser
    - mode: 600