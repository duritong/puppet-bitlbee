# puppet-bitlbee [![Build Status](https://travis-ci.org/visibilityspots/puppet-bitlbee.svg?branch=master)](https://travis-ci.org/visibilityspots/puppet-bitlbee)

Installation and configuration of a bitlbee server (http://www.bitlbee.org) using puppet

The packages bitlbee and bitlbee-devel (available on the yum epel repository) will be installed. Make sure that a repository which contains those packages is enabled on your system.

Using the parameters

  -I  Classic/InetD mode. (Default)
  -D  Daemon mode. (one process serves all)
  -F  Forking daemon. (one process per client)
  -p  Port number to listen on. (Default: 6667)

and configuration settings:

AuthMode:

  Open       Accept connections from anyone, use NickServ for user authentication. (default)
  Closed     Require authorization (using the PASS command during login) before allowing the user to connect at all.
  Registered Only allow registered users to use this server; this disables the register- and the account command until the user identifies himself.

AuthPassword:

  Password has can be created with bitlbee once the instance has been installed:

  bitlbee -x hash <cleartext password>

in the puppet syntax will start the bitlbee server with following motd:

  $CHATHOSTNAME bitlbee (%v) located at $LOCATION.

Implemented motd usage. When using the motd module from https://github.com/ripienaar/puppet-concat set the motd variable to true.

Tested on CentOS 6

## Example for node.pp manifest: ==

```puppet
node 'HOSTNAME' {
  class {
   'bitlbee':
      package_version => 'installed|latest',
      mode            => 'X',
      authmode        => 'X',
      authpassword    => 'md5hash',
      chathostname    => 'NAME',
      location        => 'LOCATION',
      motd            => true/false
    ;
  }
}
```

## Sources
* http://bitlbee.org

Feel free to report issue's or comments.
