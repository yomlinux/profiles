class profiles::dn-bash {
 file {"bash.sh":
   ensure => 'file',
   source => 'puppet:///modules/profiles/bash.sh',
   path   => '/usr/local/bin/bash.sh',
   owner  => 'root',
   group  => 'root',
   mode   => '0744',
   notify => Exec['run_my_script'],
 }
 exec { 'run_my_script':
  command     => '/usr/local/bin/bash.sh',
  refreshonly => true
 }
}
  