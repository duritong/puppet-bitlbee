# Class: bitlbee::config
#
# Class which configures the bitlbee service
class bitlbee::config {

	if ($bitlbee::config_purge) and ($bitlbee::package_ensure in [ 'absent', 'purged' ]) {

		$file_ensure = absent
	}
	else {

		$file_ensure = present
	}

	if ($bitlbee::config_purge) {

		file { "${bitlbee::configdir}":

			ensure => directory,
			purge => true,
		}
	}

	file { "${bitlbee::configdir}/bitlbee.conf":

		notify => service[$bitlbee::service_name],

		ensure => $file_ensure,
		mode => '0640',
		owner => 'root',
		group => 'root',
		content => template('bitlbee/bitlbee.conf.erb'),
	}->
	file { "${bitlbee::configdir}/motd.txt":

		notify => service[$bitlbee::service_name],

		ensure => $file_ensure,
		mode => '0644',
		owner => 'root',
		group => 'root',
		content => template('bitlbee/motd.txt.erb'),
	}
}
