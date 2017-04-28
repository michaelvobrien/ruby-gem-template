require "rake/testtask"

# ruby -I lib:test test/foo_test.rb
#
# http://docs.seattlerb.org/rake/Rake/TestTask.html
Rake::TestTask.new do |t|
  t.description = "Run tests (default)"
  t.libs << "test"
  t.test_files = FileList["test/**/*_test.rb"]
end
task :default => :test
