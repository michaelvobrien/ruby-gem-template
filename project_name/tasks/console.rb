gemspec_file = Dir["*.gemspec"].first
spec = eval(File.read(gemspec_file))

desc "Enter Console"
task :console do
  `command -v pry`
  if $?.success?
    sh "pry -I lib -r #{spec.name}"
  else
    sh "irb -I lib -r #{spec.name}"
  end
end
task :c => :console
