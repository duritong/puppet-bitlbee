# Class: bitlbee::config
#
# Class which configures the bitlbee service
class bitlbee::config inherits bitlbee {

	file { 'bitlbee.conf':

		ensure=> $package_ensure,
		mode => '0644',
		owner => 'root',
		group => 'root',
		path => "${bitlbee::configdir}/bitlbee.conf",
		content => template('bitlbee/bitlbee.conf.erb'),
		notify => Service[$service_name],
	}

	file { 'motd.txt':

		ensure=> $package_ensure,
		mode => '0644',
		owner => 'root',
		group => 'root',
		path => "${bitlbee::configdir}/motd.txt",
		content => template('bitlbee/motd.txt.erb'),
		notify => Service[$service_name],
	}
}
