class profile::ssh_server {
        package {'openssh-server':
          ensure => present,
 }
        service {'sshd':
          ensure => 'running',
          enable => 'true',
 }
        ssh_authorized_key { 'root@master.puppet.vm':
          ensure => present,
          user   => 'root',
          type   => 'ssh-rsa',
          key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC+Teq8MGwnE4x4nIZOcd4PZIcyQqMlSOyPCtIXTJVJgOTKRLIfKSshuqNrgQAr5jnL1OK6uYOuic3YMe6UbG918jBDVonoDqhaEuo7uvf4n8ghIzSlaZ8LC7Iz9e6Y28W66ub+GjewbN4Bn8aYiAC+BSzPYHsxmcMakyx2dCLb2k/3fnQF2E3NiBfUNxPHQfVy6o0lcs+H+8+ffoTu/sXECWsxZjs53VX6ZuiAD+qDPqz3lbf4i/6aDAzkYJp6aVvat+NTNtO/q8wz8NBemID+hwn/N8dAxXs8rMqe/lKN35xD4GVFr+Avwl5CwXTZr1leuotnkVp3hD6A/Xl9NYo3',
   }       
 }
 
