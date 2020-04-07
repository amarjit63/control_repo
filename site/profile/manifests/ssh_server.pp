class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC6NPXQpP5DOsq71jF+7qvBDg82BbYlYubadH1Czl1cQNAX/R1xqbEeJ0xSynEIKfAregoJpBk73X+xf/1gEd80VdqpsfzcqS/dP2eNjp8ZxLDa6s6QHVXMKXWh0uVbN9fwYwrdYVEnJ9+4Ab/Xi/QjthnuxGU16ijTF7h+XhUyJ1D5SwEANGoL/O3D5l1JxXhTO8qERr481FxORaxjw/kZRzkD5IOfMBIwVjAMYsIqVW2GUeYewAUPRt6UZ5L/AYGLcX2hQpFw03a1eS0MROgCo3lTfqdogVBFdECt9cijH02Jv7uexUmFVBS/M7xin3+kHtqnsD/uIdse9dlt3QSL',
	}  
}
