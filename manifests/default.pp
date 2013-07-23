class do-stuff {
  include apt

  exec { 'first update':
    command => '/usr/bin/apt-get update'
  }
  
  apt::ppa { 'ppa:chris-lea/node.js':
    require => Exec['first update'],
  }

  exec { 'second update':
    command => '/usr/bin/apt-get update',
    require => Apt::Ppa['ppa:chris-lea/node.js'],
  }

  package {  [ 'build-essential', 'git', 'nodejs' ]:
    ensure  => present,
    require => Exec['second update'],
  }

}

include do-stuff