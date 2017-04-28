require "rdoc/task"

# https://ruby.github.io/rdoc/index.html
RDoc::Task.new do |rdoc|
  rdoc.markup = "markdown"
  rdoc.main = "README.md"
  rdoc.rdoc_files.include("README.md", "lib/**/*.rb")
end
