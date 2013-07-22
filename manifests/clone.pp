###############################################
# usage:
# git::clone { "name": repository => "https://giturl/name.git" }
#
##############################################

define git::clone($repository,
  $path = '/vagrant') {

  exec { "git clone ${repository}":
    cwd     => $path,
    creates => "${path}/${name}",
    require => Package[ 'git' ]
  }
}