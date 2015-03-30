class sudo {
    file { "/etc/suders":
        owner => 'root',
        group => 'root', 
        mode => '0440',
    }
}
