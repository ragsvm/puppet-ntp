class ntp (
  String $package_name,
  String $package_ensure,
  Array[String] $servers,
  String $service_name,
  String $service_ensure,
  Boolean $service_enable,
  ){

    class {'::ntp::install':}
    -> class {'::ntp::config':}
    ~> class {'::ntp::service':}

}
