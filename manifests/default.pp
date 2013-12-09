node default {
  file { '/tmp/hello_world':
    content => 'HELLO WORLD!',
  }
}
