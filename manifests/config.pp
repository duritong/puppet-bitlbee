# Class: bitlbee::config
#
# Class which configures the bitlbee service
class bitlbee::config {

	file { "${bitlbee::configdir}/bitlbee.conf":

		notify => service[$bitlbee::service_name],

		ensure => file,
		mode => '0640',
		owner => 'bitlbee',
		group => 'bitlbee',
		content => template('bitlbee/bitlbee.conf.erb'),
	}->
	file { "${bitlbee::configdir}/motd.txt":

		notify => service[$bitlbee::service_name],

		ensure => file,
		mode => '0644',
		owner => 'bitlbee',
		group => 'bitblee',
		content => template('bitlbee/motd.txt.erb'),
	}
}
