# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include apache::config
class apache::config {
  file { 'apache_config':
     path   => $apache::config_path,
     source => "puppet:///modules/apache/${osfamily}.conf",
     mode   => '0644',
     owner  => 'root',
     group  => 'root',
     ensure => $apache::config_ensure,
}
}
