{% from "phpvirtualbox/map.jinja" import phpvirtualbox with context -%}

phpvirtualbox-archive:
  archive.extracted:
    - name: {{ phpvirtualbox.directory }}
    - source: {{ phpvirtualbox.url }}
    - source_hash: sha256={{ phpvirtualbox.hash }}
    - makedirs: True

phpvirtualbox-packages:
  pkg.installed:
    - fromrepo: stable
    - pkgs:
      - php5
    - require:
      - archive: phpvirtualbox-archive


