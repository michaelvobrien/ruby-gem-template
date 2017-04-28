# Ruby Gem Template

## Overview

This is a Ruby gem template and includes examples of what you may want
to include in your own Ruby gem.

The template is in the `project_name` directory.


## Getting Started

I like to use a path that contains templates for starting new
projects, such as `~/new`. For example, I would put this project in
`~/new/ruby-gem`.

Run the included script to create a new gem:

```sh
~/new/ruby-gem/new-gem <your gem name>
```

**NOTE:** The `new-gem` script is meant to run on a Unix system. It
uses system commands, such as `find`, `xargs`, and `sed`.

Or, you can do it manually with the following steps:

1. Copy `project_name` directory to `<your gem name>`.
2. Rename `project_name.gemspec` to `<your gem name>.gemspec`.
3. Rename `lib/project_name.rb` to `lib/<your gem name>.rb`.
4. Rename `lib/project_name` to `lib/<your gem name>`.
5. Rename `bin/project_name` to `bin/<your gem name>`.
6. Find `project_name` and replace with `<your gem name>`.
7. Find `ProjectName` and replace with `YourGemName`.
8. Initialize Git (`git init`).


## License

This is free and unencumbered software released into the public
domain.

See [UNLICENSE.md](UNLICENSE.md) file.
