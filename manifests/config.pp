# Class: bitlbee::config
#
# Class which configures the bitlbee service
class bitlbee::config (
  $runmode         = $::bitlbee::runmode,
  $user            = $::bitlbee::user,
  $daemoninterface = $::bitlbee::daemoninterface,
  $daemonport      = $::bitlbee::daemonport,
  $clientinterface = $::bitlbee::clientinterface,
  $authmode        = $::bitlbee::authmode,
  $authpassword    = $::bitlbee::authpassword,
  $operpassword    = $::bitlbee::operpassword,
  $hostname        = $::bitlbee::hostname,
  $motdfile        = $::bitlbee::motdfile,
  $configdir       = $::bitlbee::configdir,
  $pinginterval    = $::bitlbee::pinginterval,
  $pingtimeout     = $::bitlbee::pingtimeout,
  $proxy           = $::bitlbee::proxy,
  $protocols       = $::bitlbee::protocols,
  $ssl             = $::bitlbee::ssl,
  $cafile          = $::bitlbee::cafile,
  $private         = $::bitlbee::private,
) {

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
