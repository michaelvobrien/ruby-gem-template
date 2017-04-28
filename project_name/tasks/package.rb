require "rubygems/package_task"

# http://ruby-doc.org/stdlib/libdoc/rubygems/rdoc/Gem/PackageTask.html
gemspec_file = Dir["*.gemspec"].first
spec = eval(File.read(gemspec_file))
Gem::PackageTask.new(spec) { |pkg| }
