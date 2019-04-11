function ntp::data(){
  $base_params = {
    'ntp::package_ensure'  => 'present',
    'ntp::service_ensure'  => 'running',
    'ntp::service_enable'  => true,
    'ntp::servers'         => ['0.centos.pool.ntp.org iburst','1.centos.pool.ntp.org iburst','2.centos.pool.ntp.org iburst'],
   }

  case $facts['os']['family']{
    'Debian':{
      $os_params = {
        'ntp::package_name' => 'ntp',
        'ntp::service_name' => 'ntp',
      }
    }

    'Redhat':{
      $os_params = {
        'ntp::package_name'    => 'ntp',
        'ntp::service_name'        => 'ntpd',
      }
    }

    'default':{
      fail("${facts[operatingsystem]} is not supported")
    }
  }
  $base_params + $os_params
}
