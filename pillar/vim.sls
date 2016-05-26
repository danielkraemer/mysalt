vim:
  managed_vimrc: true
  allow_localrc: false
  config:
    syntax: 'on'
    scriptencoding: 'utf8'
    filetype indent: 'on'
    filetype plugin: 'on'

  settings:
    ai:
    autoread:
    backspace: indent,eol,start
    encoding: utf8
    expandtab:
    fenc: utf8
    ffs: unix,dos,mac
    history: 2000
    hlsearch:
    ignorecase:
    incsearch:
    magic:
    mat: 2
    nobackup:
    nocompatible:
    number:
    ruler:
    shiftwidth: 4
    showmatch:
    si:
    smartcase:
    smarttab:
    t_Co: 256
    tabstop: 4
    wildmenu:
    showcmd:
    softtabstop: 4
    laststatus: 2
    cmdheight: 2


  lets:
    '&guicursor': '&guicursor . ",a:blinkon0"'
