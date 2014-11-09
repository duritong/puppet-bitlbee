# Class: bitlbee::install
#
# Installation of the bitlbee package
class bitlbee::install {

	package { $bitlbee::package_name:

		ensure => $bitlbee::package_ensure,
	}
}