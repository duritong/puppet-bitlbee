# Class: bitlbee
#
# Initialization class for the bitlbee service
class bitlbee (

  Enum['latest','installed','present'] $package_ensure = latest,
  String[1] $package_name = 'bitlbee',

  Boolean $service_manage = true,
  Boolean $service_enable = true,
  Enum['running','stopped'] $service_ensure = running,
  String[1] $service_name = 'bitlbee',

  Optional[String[1]] $runmode = undef,
  String[1] $user = 'bitlbee',
  Optional[String[1]] $daemoninterface = undef,
  Optional[String[1]] $daemonport = undef,
  Optional[String[1]] $clientinterface = undef,
  Optional[String[1]] $authmode = undef,
  Optional[String[1]] $authpassword = undef,
  Optional[String[1]] $operpassword = undef,
  Optional[String[1]] $hostname = $fqdn,
  Stdlib::Unixpath $motdfile = '/etc/bitlbee/motd.txt',
  Stdlib::Unixpath $configdir = '/etc/bitlbee',
  Optional[String[1]] $pinginterval = undef,
  Optional[String[1]] $pingtimeout = undef,
  Optional[String[1]] $proxy = undef,
  Optional[String[1]] $protocols = undef,
  Boolean $ssl = false,
  Stdlib::Unixpath $cafile = '/etc/ssl/certs/ca-certificates.crt',
  Optional[String[1]] $private = undef,
  Stdlib::Unixpath $userconfigdir = '/var/lib/bitlbee',
) {
  class{ 'bitlbee::install': }->
  class{ 'bitlbee::config': }->
  class{ 'bitlbee::service': }
}
