{% from "phpvirtualbox/map.jinja" import phpvirtualbox with context -%}

include: 
  - .install

vbox-user:
  user.present:
    - name: {{ phpvirtualbox.user }}
    - shell: /bin/bash
    - home: {{ phpvirtualbox.directory }}
    - createhome: True
    - password: {{ phpvirtualbox.password }}
    - groups: 
      - vboxusers
      - daemon
    - require:
      - pkg: virtualbox-packages


