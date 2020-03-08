node default {
file {'/root/README':
  ensure => file,
}
}
node 'puppetmaster1.eg.com'{
  include role:master_server
}
