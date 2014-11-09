# Class bitlbee::params
#
# This class contains every parameter which will be used in this puppet module
# for setting up the bitlbee service
class bitlbee::params {

	$package_ensure = "latest"
	$package_name = 'bitlbee'

	$service_manage = true
	$service_enable = true
	$service_ensure = 'running'
	$service_name = 'bitlbee'

	$runmode = undef
	$user = undef
	$daemoninterface = undef
	$daemonport = undef
	$clientinterface = undef
	$authmode = undef
	$authpassword = undef
	$operpassword = undef
	$hostname = $fqdn
	$motdfile = '/etc/bitlbee/motd.txt'
	$configdir = undef
	$pinginterval = undef
	$pingtimeout = undef
	$proxy = undef
	$protocols = undef
	$cafile = undef
	$private = undef
}
