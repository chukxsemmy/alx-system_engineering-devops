#A puppets program that removes pass auth and defaults a key to school
file_line { 'ssh to remove server using school as def':
  path => '/etc/ssh/ssh_config',
  line => '   IdentityFile ~/.ssh/school',
}

file_line { 'sets pass auth to no':
  path => '/etc/ssh/ssh_config',
  line => '   PasswordAuthentication no',
}
