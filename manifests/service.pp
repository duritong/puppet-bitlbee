# Class: bitlbee::service
#
# Class which ensures the bitlbee service is running
class bitlbee::service {

	if ! ($service_ensure in [ 'running', 'stopped' ]) {

		fail('service_ensure parameter must be running or stopped')
	}

	if $service_manage == true {

		service { $service_name:

			enable => $service_enable,
			ensure => $service_ensure,
		}
	}
}
