# Class: bitlbee::service
#
# Class which ensures the bitlbee service is running
class bitlbee::service {

	if !($bitlbee::service_ensure in [ 'running', 'stopped' ]) {

		fail('service_ensure parameter must be running or stopped')
	}

	if $bitlbee::service_manage == true {

		service { $bitlbee::service_name:

			enable => $bitlbee::service_enable,
			ensure => $bitlbee::service_ensure,
			hasstatus => false,
		}
	}
}
