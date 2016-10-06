base:
  '*':
    - vim
    - openssh
    - dkraemer-zshrc
    - root-zshrc
  'not themachine':
    - match: compound
    - users-remote
  'themachine':
    - users-local
