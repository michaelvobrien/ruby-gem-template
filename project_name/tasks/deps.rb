desc "Install gem dependencies"
task :deps do
  sh "gem install -g --no-lock"
end

namespace :deps do
  desc "Gem dependencies list"
  task :list do
    sh "gem install -g --explain"
  end

  desc "Gem dependencies help"
  task :help do
    sh "gem help gem_dependencies"
  end
end
