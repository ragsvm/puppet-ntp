class ntp::config(
  Array[String] $servers = $::ntp::servers,
  ){
    file { '/etc/ntp.conf':
      ensure  => file,
      mode    => '0600',
      owner   => 'root',
      group   => 'root',
      content => template('ntp/ntp.conf.erb'),
    }
  }
