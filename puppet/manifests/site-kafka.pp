Exec { path => [ "/bin", "/sbin", "/usr/bin", "/usr/sbin" ] }

# vim
class { 'vim': }

# puppi
class { 'puppi': }

# java
class { 'java':
    distribution => 'oracle-jdk',
    version => 7,
}

# kafka
class { 'kafka': }

# kafka server
class { 'kafka::server':
    log_dirs => ['/var/spool/kafka/a', '/var/spool/kafka/b'],
    brokers => {
      'kafka-1.killrweather.cjmf.work' => { 'id' => 1, 'port' => 12345 },
      'kafka-2.killrweather.cjmf.work' => { 'id' => 2, 'port' => 12345 },
      'kafka-3.killrweather.cjmf.work' => { 'id' => 3, 'port' => 12345 },
    },
    zookeeper_hosts => ['zoo-1:2181', 'zoo-2:2181', 'zoo-3:2181'],
    zookeeper_chroot => '/kafka/cluster_name',
}


# system-update
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
