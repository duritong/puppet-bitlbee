# Class: bitlbee::config
#
# Class which configures the bitlbee service
class bitlbee::config {

  file { "${bitlbee::configdir}/bitlbee.conf":
    ensure  => file,
    notify  => Service[$bitlbee::service_name],
    mode    => '0640',
    owner   => 'bitlbee',
    group   => 'bitlbee',
    content => template('bitlbee/bitlbee.conf.erb'),
  }->
  file { "${bitlbee::configdir}/motd.txt":
    ensure  => file,
    notify  => Service[$bitlbee::service_name],
    mode    => '0644',
    owner   => 'bitlbee',
    group   => 'bitblee',
    content => template('bitlbee/motd.txt.erb'),
  }
}
