#!jinja|yaml|gpg
users:
  zapp:
    uid: 1001
    prime_group:
      name: zapp
      gid: 1001
    fullname: Sebi
    password: |
      -----BEGIN PGP MESSAGE-----
      
      hQEMA8VjQo0OhzhCAQgAudvN8VuxvapqyVZifp/lg+Xqu1ji3Pf/+47q2Yi4USk5
      YFuXDgKQLuYXjow35mPh6JapQWOCgIqcsDoEWi8AUooySRdHJQpoDMk3pJoaY3qd
      wxLZlXfNCHosI3dtbl44gFkjbqOSnGuO5eEytFl5oPPypePdJitv0X50KmmyY5io
      FlXZvusGwovNQn683WdZEYPFzEWrydwNAaM1gTCEAyUQRWKH9HnNBwGF/UDG0psz
      mAf4pPDhtzBW8qmTHWqanZ1wSuA8O8JpfIoKWMmpGVRm9E+tsSfIknth9a23c3Mt
      J9cdcVshkPGSDrdcvLays/kq8yMPM8i1muTuCma+m9KdASndW0ICpv4tm6CxAo68
      8XT9+8hn30i0LP7+MhbqsAXbm5bfSFr2D6geHT0E+AO6Zzua5kamyR+BZGDTom9F
      BAySzuyfbjmRkhZbChqlYAexmhdTx54f+0tZmHVgA2mb/L5A46geGYq3w0I2RPYx
      JbenYtPRLolqzcOcTeIlF/eysmJ1W1w2YXv7gwooZITUp27NPL1bLaNTFZIcBg==
      =jq3E
      -----END PGP MESSAGE-----
    createhome: True
    manage_vimrc: False
    manage_bashrc: False
    bashrc_content: |
      alias l "ls -la --color=auto"
    manage_profile: False
    sudouser: True
    sudo_rules:
      - ALL=(ALL)       NOPASSWD:/usr/bin/docker
      - ALL=(ALL)       NOPASSWD:/usr/bin/docker-compose
    shell: /bin/bash
    optional_groups:
      - docker

  dkraemer:
    uid: 1000
    prime_group:
      name: dkraemer
      gid: 1000
    fullname: Daniel Kraemer
    password: |
      -----BEGIN PGP MESSAGE-----
      
      hQEMA8VjQo0OhzhCAQf/T1R/JFJT/BSQxek8ibzcL7idYy+iB5x1Gp9ladjq56bE
      uY2gFDAXlmGNmGNfFz2O9o4m4RTZwoKDetdLpL9M00DWxpWCoh1fKLFef3Dq0zH3
      W8sCF1DgX3hycVoUoGsHlq5lhoSM/jNA8+NfAfpaov9wxareUbQLdBPCu38Yg7KG
      wNYzrp8FBiWRJgCXcD1GcJM9iwea70FVrTW1x42FLQYP9v4/3R4TcgWX8l316kFg
      e0aminLQeqRNKPdpde1hpK2OPYHUK3RYuQ2acxH2DbUWwhXYK9BKg2HeyvJFd6Pf
      HAdTJnHdfduTUlm4s/3hBU9A98Lb/eUgdVGa4U64LtKdAXWcul1f89DW8No0eaXu
      C1zd5fowp+NF09Lv+6yEaslL4QMsgYBjyi3R6l5Iv6rLyhQ0xqdgJi3gcXmGdcoB
      eB8oT6uet06UO06pKxSrZet99wZi3jc87JAQjIlY/1Ee+r6+EXqLdS8fA7CN7O6L
      gemd83idAEewPrQt2tFgebrJuiq8rxOGLWvonrTaVsWoVw/sTrSIvtmi1PjIqw==
      =sDb2
      -----END PGP MESSAGE-----
    sudouser: True
    sudo_rules:
      - ALL=(ALL)       NOPASSWD:/usr/bin/docker
      - ALL=(ALL)       NOPASSWD:/usr/bin/docker-compose
    shell: /bin/zsh
    optional_groups:
      - docker
    ssh_config:
      all:
        hostname: '*'
        options:
          - "TCPKeepAlive yes"
          - "ServerAliveInterval 120"
          - "GSSAPIAuthentication no"
    ssh_auth:
      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC19chKD7H7vPyGnYVdP3xQF7loJGIFQE4aaCeP0JGtlTiE5ArLRFcFIZC+z4JsIa3hs1zSG+L5bRQmZiRlayq+xhPsNQP72qmPmbUbEREDecDS5J/gJHXtmQUHb633xDdB6ciSWocMjHuf8UHmmYtB+0y9t8wPy1fxA/BQx3ceHYWMaA6ULacp8iooSCVdtztDxcDUISrdFIIGHBwlB2qhf+v+6m6ZOEoCtwH2cRNnyVhntK9j0/YuqWUOKZPA4WsLsThkI1aqkR6qpNfJ9xcq2F5AahhgIkVf+rDS0HzEbD5JtY7OZm/AM/5S6RcSP9H9zRVQqax/Z0Pjme0KsvRx work
      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTidaDLo4Q1SmFx3SdyDVkc76/au9cUuRCS17T2LL99xsJ4DgOwQAGosqoDAvrvBUY32n75/FORuw7gIHdxMk+H+5YNmF8j4m7HTlGOlxsrHlNf5+7wzYzDwvTryNdh40E4a80bSkieUo+qm3H4T99RDLuRyKzh7zC5pX1BxvjbabnQB/3hH/7QeLcuREb2unb8F7WB3Uqv/4qfmi/19xDN30JDYAbnBAf9d5h8Y/NFbc/JWsG+tg6O4BnJqwJ/UoRjrZr+rs8u4gqdCPZbkyY05CrPXhNNrrnT++AX+HoufTJWBpL+SArOtLRoYlyShWzOP3E1dXqSJ3S+1tKRIvF dkraemer@themachine
