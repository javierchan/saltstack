create-users:
  user.present:
    - name: saltuser
    - groups:
      - sudo
      - developers