sshd_config:
  Port: 22
  Protocol: 2
  HostKey:
    - /etc/ssh/ssh_host_rsa_key
    - /etc/ssh/ssh_host_ecdsa_key
    - /etc/ssh/ssh_host_ed25519_key
  SyslogFacility: AUTHPRIV
  PermitRootLogin: 'prohibit-password'
  PasswordAuthentication: 'no'
  StrictModes: 'yes'
  MaxAuthTries: 6
  MaxSessions: 10
  RSAAuthentication: 'yes'
  PubkeyAuthentication: 'yes'
  IgnoreRhosts: 'yes'
  RhostsRSAAuthentication: 'no'
  HostbasedAuthentication: 'no'
  PermitEmptyPasswords: 'no'
  ChallengeResponseAuthentication: 'no'
  X11Forwarding: 'no'
  PrintMotd: 'no'
  PrintLastLog: 'yes'
  TCPKeepAlive: 'yes'
  AcceptEnv: "LANG LC_*"
  UsePAM: 'yes'
  UseDNS: 'no'
  GSSAPIAuthentication: 'no'
  AuthorizedKeysFile:  '.ssh/authorized_keys'

openssh:
  auth:
    AAAAB3NzaC1yc2EAAAADAQABAAABAQDTidaDLo4Q1SmFx3SdyDVkc76/au9cUuRCS17T2LL99xsJ4DgOwQAGosqoDAvrvBUY32n75/FORuw7gIHdxMk+H+5YNmF8j4m7HTlGOlxsrHlNf5+7wzYzDwvTryNdh40E4a80bSkieUo+qm3H4T99RDLuRyKzh7zC5pX1BxvjbabnQB/3hH/7QeLcuREb2unb8F7WB3Uqv/4qfmi/19xDN30JDYAbnBAf9d5h8Y/NFbc/JWsG+tg6O4BnJqwJ/UoRjrZr+rs8u4gqdCPZbkyY05CrPXhNNrrnT++AX+HoufTJWBpL+SArOtLRoYlyShWzOP3E1dXqSJ3S+1tKRIvF:
      - user: dkraemer
        present: True
        enc: ssh-rsa
        comment: themachine

  generate_dsa_keys: False
  absent_dsa_keys: True
  provide_dsa_keys: False

  generate_ecdsa_keys: True
  absent_ecdsa_keys: False
  provide_ecdsa_keys: False

  generate_rsa_keys: True
  generate_rsa_size: 4096
  absent_rsa_keys: False

  generate_ed25519_keys: True
  absent_ed25519_keys: False
  provide_ed25519_keys: False
