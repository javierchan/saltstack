# Verify connectivity to minions
ping_test:
  module.run:
    - name: test.ping