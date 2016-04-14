class profiles::dn-xinetd {
      package { 'xinetd':
        ensure => installed,
     }
      service { 'xinetd':
        ensure    => 'running',
        enable    => true,
      }
    }