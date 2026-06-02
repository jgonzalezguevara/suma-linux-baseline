ssh_hardening:
  file.replace:
    - name: /etc/ssh/sshd_config
    - pattern: '^#?PermitRootLogin.*'
    - repl: 'PermitRootLogin no'

ssh_password_auth:
  file.replace:
    - name: /etc/ssh/sshd_config
    - pattern: '^#?PasswordAuthentication.*'
    - repl: 'PasswordAuthentication no'

sshd_service:
  service.running:
    - name: sshd
    - enable: true
    - watch:
      - file: ssh_hardening
      - file: ssh_password_auth
