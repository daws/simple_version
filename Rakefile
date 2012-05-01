require 'bundler'
Bundler.require(:rake)

# Configure gem building
require File.expand_path(File.join(File.dirname(__FILE__), 'lib', 'simple_version', 'version'))
SimpleGem.current_version = SimpleVersion::VERSION
SimpleGem.current_gemspec = 'simple_version.gemspec'

task :test do
  changelog = File.join(Rake.application.original_dir, 'CHANGELOG.rdoc')
  system "vim #{changelog}"
  if `git status -s #{changelog}`.strip.empty?
    puts "must add to changelog"
    exit 1
  end
  puts "ok - going!"
end
