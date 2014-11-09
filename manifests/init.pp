# Class: bitlbee
#
# Initialization class for the bitlbee service
class bitlbee (

	$package_ensure = latest,
	$package_name = 'bitlbee',

	$service_manage = true,
	$service_enable = true,
	$service_ensure = running,
	$service_name = 'bitlbee',

	$config_purge = true,

	$runmode = undef,
	$user = 'bitlbee',
	$daemoninterface = undef,
	$daemonport = undef,
	$clientinterface = undef,
	$authmode = undef,
	$authpassword = undef,
	$operpassword = undef,
	$hostname = $fqdn,
	$motdfile = '/etc/bitlbee/motd.txt',
	$configdir = '/etc/bitlbee',
	$pinginterval = undef,
	$pingtimeout = undef,
	$proxy = undef,
	$protocols = undef,
	$cafile = undef,
	$private = undef,

) {

	class{ 'bitlbee::install': }->
	class{ 'bitlbee::config': }->
	class{ 'bitlbee::service': }
}