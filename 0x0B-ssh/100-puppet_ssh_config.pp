# automate configuration of client ssh_config file

file{'/etc/ssh/ssh_config':
  ensure  => 'file',
  mode    => '0644',
  content => 'Host ubuntu_server
    Hostname 54.164.46.19
    User ubuntu
    IdentityFile ~/.ssh/school
    PasswordAuthentication no',
}
