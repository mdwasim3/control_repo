node default {
file {'/root/README':
  ensure => file,
  content => 'This is a redme',
  owner => 'root',
}
}
node 'puppetmaster1.eg.com'{
  include role:master_server
}

node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::db_server
}
