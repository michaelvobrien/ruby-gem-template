require "project_name"
require "project_name/color"
require "project_name/banner"

module ProjectName
  class Command
    include Banner

    attr_reader :options

    def initialize(options)
      @options = options

      Color.auto
      Color.enable  if @options.color == true
      Color.disable if @options.color == false
    end

    def run
      message
    end

    def message
      info_banner "Welcome", padding: 1

      colors = [
        Color.red,  Color.green,   Color.yellow,
        Color.blue, Color.magenta, Color.cyan
      ]

      options.arg.split("").each_with_index do |char, index|
        print [colors[index % colors.length], char, Color.reset].join
      end
      print "\n"

      warn_banner "Bye"
    end
  end
end
