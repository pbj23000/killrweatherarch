class sudo {

    package { sudo: ensure => latest }

    file { "/etc/suders":
        owner => 'root',
        group => 'root', 
        mode => '0440',
        source => "puppet:///modules/sudo/sudoers",
        require => Package["sudo"],
    }
}
