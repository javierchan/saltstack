{% set dotfiles = salt['pillar.get']('dotfiles', {}) %}

{% for file, source in dotfiles.items() %}
{{ file }}:
  file.managed:
    - source: {{ source }}
    - user: {{ salt['pillar.get']('user', 'default_user') }}
    - group: {{ salt['pillar.get']('group', 'default_group') }}
    - mode: 644
{% endfor %}
