module ProjectName
  # http://ascii-table.com/ansi-escape-sequences.php
  class Color
    def self.auto
      enable if $stdout.tty?
    end

    def self.enabled?
      @enabled if defined?(@enabled)
    end

    def self.enable
      @enabled = true
    end

    def self.disable
      @enabled = false
    end

    class << self
      {
        reset:   "\e(B\e[m",
        bold:    "\e[1m",
        black:   "\e[30m",
        red:     "\e[31m",
        green:   "\e[32m",
        yellow:  "\e[33m",
        blue:    "\e[34m",
        magenta: "\e[35m",
        cyan:    "\e[36m",
        white:   "\e[37m"
      }.each do |name, seq|
        define_method(name) do
          return unless enabled?
          seq
        end
      end
    end

  end
end
