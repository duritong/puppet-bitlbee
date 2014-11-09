# Class: bitlbee::install
#
# Installation of the bitlbee package
class bitlbee::install inherits bitlbee {

	package { $package_name:

		ensure => $package_ensure,
	}
}
