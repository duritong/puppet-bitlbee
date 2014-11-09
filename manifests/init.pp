# Class: bitlbee
#
# Initialization class for the bitlbee service
class bitlbee (

	$package_name = $bitlbee::params::package_name,
	$package_ensure = $bitlbee::params::package_ensure,
	$package_name = $bitlbee::params::package_name,

	$service_manage = $bitlbee::params::service_manage,
	$service_enable = $bitlbee::params::service_enable,
	$service_ensure = $bitlbee::params::service_ensure,
	$service_name = $bitlbee::params::service_name,

	$runmode = $bitlbee::params::runmode,
	$user = $bitlbee::params::user,
	$daemoninterface = $bitlbee::params::daemoninterface,
	$daemonport = $bitlbee::params::daemonport,
	$clientinterface = $bitlbee::params::clientinterface,
	$authmode = $bitlbee::params::authmode,
	$authpassword = $bitlbee::params::authpassword,
	$operpassword = $bitlbee::params::operpassword,
	$hostname = $bitlbee::params::hostname,
	$motdfile = $bitlbee::params::motdfile,
	$configdir = $bitlbee::params::configdir,
	$pinginterval = $bitlbee::params::pinginterval,
	$pingtimeout = $bitlbee::params::pingtimeout,
	$proxy = $bitlbee::params::proxy,
	$protocols = $bitlbee::params::protocols,
	$cafile = $bitlbee::params::cafile,
	$private = $bitlbee::params::private,

) inherits bitlbee::params {

	Class['::bitlbee::install'] ->
	Class['::bitlbee::config'] ->
	Class['::bitlbee::service']
}