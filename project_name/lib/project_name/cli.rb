require "project_name/command"
require "ostruct"
require "optparse"

module ProjectName
  class CLI
    def self.parse_options
      options = OpenStruct.new

      option_parser = OptionParser.new do |opts|
        opts.banner = "Usage: #{File.basename($0)} [options] ARG"
        opts.separator ""

        opts.on("--[no-]color", "Output using ansi colors (default: auto)") do |c|
          options.color = c
        end
        opts.on("-n", "--noop", "No operation; dry-run") do
          options.noop = true
        end
        opts.on("--verbose", "Verbose output") do
          options.verbose = true
        end

        opts.separator ""

        opts.on_tail("-h", "--help", "Show this message") do
          puts opts
          exit
        end
        opts.on_tail("--version", "Show version") do
          puts VERSION
          exit
        end
      end

      rest = option_parser.parse!

      if rest.empty? || rest.length > 1
        puts option_parser
        abort
      else
        options.arg = rest.shift
      end

      options
    end

    def self.handle_signals
      Signal.trap(:INT) do
        print "\n"
        exit
      end
    end

    def self.run
      handle_signals
      options = parse_options
      Command.new(options).run
    end
  end
end
