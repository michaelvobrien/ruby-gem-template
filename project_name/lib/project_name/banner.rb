require "project_name/color"

module ProjectName
  module Banner
    def info_banner(text, padding: 0)
      banner = [
        "\n" * padding,
        Color.green, "=> ", Color.reset, text, "\n",
        "\n" * padding
      ].join

      $stdout.print banner
    end

    def warn_banner(text, padding: 0)
      banner = [
        "\n" * padding,
        Color.red, "=> ", Color.reset, text, "\n",
        "\n" * padding
      ].join

      $stderr.print banner
    end
  end
end
