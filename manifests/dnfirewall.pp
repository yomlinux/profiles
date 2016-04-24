class firewall::redhat (
  $ensure = running,
  $enable = true
){
  service { 'iptables':
    ensure => $ensure,
    enable => $enable,
    hasstatus => true,
  }
}
