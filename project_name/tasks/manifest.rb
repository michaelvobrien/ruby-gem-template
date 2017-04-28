desc "Create the MANIFEST file"
task :manifest do
  files = %w(MANIFEST LICENSE.md README.md CHANGELOG.md) +
          Dir["{bin,lib,ext}/**/*"]

  files.select! { |f| File.file?(f) }

  File.open("MANIFEST.b", "w") do |f|
    f.puts(files.sort)
  end

  system("diff -u MANIFEST MANIFEST.b")

  File.rename("MANIFEST.b", "MANIFEST")
end
