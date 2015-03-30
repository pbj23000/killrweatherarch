Exec { path => [ "/bin", "/sbin", "/usr/bin", "/usr/sbin" ] }

#vim
class { 'vim': }

#puppi
class { 'puppi': }

#java
class { 'java': 
    distribution => 'oracle-jdk',
    version => 7,
}

#zookeeper
class { 'zookeeper':
    hosts => { 'zoo-1.killrweather.cjmf.work' => 1, 'zoo-2.killrweather.cjmf.work' => 2, 'zoo-3.killrweather.cjmf.work' => 3 },
    data_dir => '/var/lib/zookeeper',
}

#zookeeper-server
class { 'zookeeper::server': }

#system-update
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
