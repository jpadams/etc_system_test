class etc_system ($etc_system_snippets=hiera("etc_system_snippets")) {
  # $system_file = '/etc/system'
  $system_file = '/tmp/system'

  file { $system_file:
    ensure  => file,
    content => template('etc_system/system.erb'),
  }
}
