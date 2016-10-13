package {'ruby':
  ensure   => '2.3.0',
  provider => 'chocolatey',
}

package {'ruby2.devkit':
  ensure   => latest,
  provider => 'chocolatey',
  require  => Package['ruby'],
}

package {'python':
  ensure   => '2.7.6',
  provider => 'chocolatey',
}

package {'jdk8':
  ensure   => latest,
  provider => 'chocolatey',
}

package {'curl':
  ensure   => installed,
  provider => 'chocolatey',
}

file {'config-rubydevkit':
  path    => 'C:\tools\DevKit2\config.yml',
  content => '- C:/tools/ruby23',
  require => Package['ruby2.devkit'],
}

exec {'install-rubydevkit':
  command => 'C:\tools\ruby23\bin\ruby.exe dk.rb install',
  cwd     => 'C:\tools\DevKit2',
  require => File['config-rubydevkit'],
}
