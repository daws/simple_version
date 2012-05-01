require File.expand_path(File.join(File.dirname(__FILE__), 'lib', 'simple_version', 'version'))

Gem::Specification.new do |s|

  # definition
  s.name = %q{simple_version}
  s.version = SimpleVersion::VERSION

  # details
  s.date = %q{2012-05-01}
  s.summary = %q{Makes it easy to manage the version of a gem or project.}
  s.description = %q{With minimal or zero configuration, provides rake tasks to manage the current version and CHANGELOG of a git-managed project.}
  s.authors = [ 'David Dawson' ]
  s.email = %q{daws23@gmail.com}
  s.homepage = %q{https://github.com/daws/simple_version}
  s.require_paths = [ 'lib' ]
  
  # documentation
  s.has_rdoc = true
  s.extra_rdoc_files = %w( README.rdoc CHANGELOG.rdoc LICENSE.txt )
  s.rdoc_options = %w( --main README.rdoc )

  # files to include
  s.files = Dir[ 'lib/**/*.rb', 'README.rdoc', 'CHANGELOG.rdoc', 'LICENSE.txt' ]

  # dependencies
  s.add_dependency 'rake', '~> 0.8'

end
