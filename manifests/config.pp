# Class: bitlbee::config
#
# Class which configures the bitlbee service
class bitlbee::config {

	file { 'bitlbee.conf':

		notify => Service["bitlbee"],
		path => "${bitlbee::configdir}/bitlbee.conf",
		content => template('bitlbee/bitlbee.conf.erb'),
	}

	file { 'motd.txt':

		notify => Service["bitlbee"],
		path => "${bitlbee::configdir}/motd.txt",
		content => template('bitlbee/motd.txt.erb'),
	}
}
