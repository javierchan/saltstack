base:
  '*':
    - common
  'G@environment:dev':
    - environment-specific/dev
  'G@environment:prod':
    - environment-specific/prod