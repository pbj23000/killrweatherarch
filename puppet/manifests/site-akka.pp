Exec { path => [ "/bin", "/sbin", "/usr/bin", "/usr/sbin" ] }

# VIM
class { 'vim': }

# puppi
class { 'puppi': }

class system-update {
  exec { 'apt-get update':
    command => 'apt-get update',
  }

  $sysPackages = [ "build-essential" ]
  package { $sysPackages:
    ensure => "installed",
    require => Exec['apt-get update'],
  }
}

include system-update
