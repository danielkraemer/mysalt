#!jinja|yaml|gpg
users:
  dkraemer:
    uid: 1000
    prime_group:
      name: dkraemer
      gid: 1000
    fullname: Daniel Kraemer
    sudouser: True
    shell: /bin/zsh
    groups:
      - wheel
    optional_groups:
      - docker
      - kvm
    gitconfig:
      user.name: Daniel Kraemer
      user.email: daniel.kraemer1988@gmail.com
      push.default: simple

    ssh_config:
      all:
        hostname: '*'
        options:
          - "TCPKeepAlive yes"
          - "ServerAliveInterval 120"
          - "GSSAPIAuthentication no"
      github:
        hostname: 'github.com'
        options:
          - "user git"
          - "identityfile ~/.ssh/github"
      kackkiste:
        hostname: kackkiste
        options:
          - "hostname mc.kackkiste.de"
          - "user dkraemer"
          - "identityfile ~/.ssh/id_rsa"
      luitzifa:
        hostname: luitzifa
        options:
          - "hostname luitzifa.de"
          - "user dkraemer"
          - "identityfile ~/.ssh/id_rsa"
    ssh_keys:
      github: |
        -----BEGIN PGP MESSAGE-----
        
        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
        =bPGj
        -----END PGP MESSAGE-----

      github.pub: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDe5EMJ1SKBZiFRAPiKPKzU1hM+VpzuzUfl8cgIoUI0483Xj3pXOqFaZsiaO2RTV0p5YVAGrTX0sPfw+80BsBlfNUdsVuTIvLKkxKPbH/4Tlad2sQgMD/EWh7U5fwCD5oWEmXyQyVz9AsStCzFeS6EzEyZ5KkDOd9SRfr83berYWqFBpeyqeQpMQ4xvzDZ2EaGNB21n99BiPMpXPxWRM43V1au10gLDSKEDaj+8y+gMbT/YNl0c0RRWv8WYJu/MP6sbD4esRGq+5VRoCa0NqU5Z1jGhFG7DwbvtT8kBjcAFzY8JOqBOZz9A08GH1h6e8yZCwT+PsZMKURBsRGC2jbBRyPx9kXFBp4tQ3ed5y8Ib73RRdxe3QuGTNvKvORpFpPvk+ly1mT8A573ptYbxRUVfoO+6lp6OWjw9QXX0rxUeBrrx6fCbiXu4OLASlNodZO9RTDTfsxPuR0/Nc8XjSssFVwgf5pWN11xrofB5KtDPqKYjn5sSkr4d/Y3imYbhAKh0D8DJAKVXehoA1pWz3IejvZ4LzyQ27vHyZ2Ud3z3s4tV90vXKw6WwB/pwhSXg0qq+K/NuYBQogbODq4/yHdfeCf1jSIVELQrfsGQnone+J356qhB2of7iWfXqswhGAQVqGPIAFab6aLxKrC4EnStHlC9vGcxFeWH4XZrMjd7jrQ== dkraemer@themachine

      privkey: |
        -----BEGIN PGP MESSAGE-----
        
        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
        4A==
        =5mha
        -----END PGP MESSAGE-----

      pubkey: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTidaDLo4Q1SmFx3SdyDVkc76/au9cUuRCS17T2LL99xsJ4DgOwQAGosqoDAvrvBUY32n75/FORuw7gIHdxMk+H+5YNmF8j4m7HTlGOlxsrHlNf5+7wzYzDwvTryNdh40E4a80bSkieUo+qm3H4T99RDLuRyKzh7zC5pX1BxvjbabnQB/3hH/7QeLcuREb2unb8F7WB3Uqv/4qfmi/19xDN30JDYAbnBAf9d5h8Y/NFbc/JWsG+tg6O4BnJqwJ/UoRjrZr+rs8u4gqdCPZbkyY05CrPXhNNrrnT++AX+HoufTJWBpL+SArOtLRoYlyShWzOP3E1dXqSJ3S+1tKRIvF dkraemer
