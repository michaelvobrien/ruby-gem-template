desc "Build a release; fails on test, notes, package, etc"
task :release => [:test, :notes, :package] do
  puts
  puts "=> Release OK"
  puts "   * Remember to check the MANIFEST."
  puts "   * Remember to check the VERSION."
  puts "   * Remember to check the CHANGELOG."
end
