require File.join([File.dirname(__FILE__), "lib", "project_name", "version.rb"])

# https://github.com/rubygems/rubygems/blob/master/lib/rubygems/specification.rb
Gem::Specification.new do |spec|
  spec.name          = "project_name"
  spec.version       = ProjectName::VERSION
  spec.authors       = [`git config --get user.name`] #FIX
  spec.email         = [`git config --get user.email`] #FIX
  spec.summary       = %q{Write a short summary. Required.} #FIX
  spec.description   = %q{Write a longer description or delete this line.} #FIX
  spec.homepage      = "https://github.com/example/test" #FIX
  spec.license       = "MIT" # https://choosealicense.com #FIX

  spec.files         = File.read("MANIFEST").split("\n")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }

  spec.required_ruby_version = ">= 2.3"
  spec.add_development_dependency "minitest-reporters"

  # spec.add_runtime_dependency "GEM_NAME", "~> VERSION"
  # spec.add_development_dependency "GEM_NAME", "~> VERSION"
end
