desc "Output FIX, TODO, and OPTIMIZE found in files"
task :notes do
  had_output = system <<~EOS
  find . -type f -not -path "./.git/*" \
    -and -not -path "./tasks/notes.rb" \
    -and -not -path "./pkg/*" -print0 \
    | xargs -0 grep --color -n -e "FIX" -e "TODO" -e "OPTIMIZE"
  EOS
  abort if had_output
end
