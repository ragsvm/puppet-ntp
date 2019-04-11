class ntp::install(
  String $package_name   = $::ntp::package_name,
  String $package_ensure = $::ntp::package_ensure,
  ){
    package {'ntp_package':

      name   => $package_name,
      ensure => $package_ensure,

    }
  }
