require 'artii'
require 'rack2aws/version'
require 'rack2aws/colorizer'

module Rack2Aws
  module Logger

    def show_welcome
      welcome_art = Artii::Base.new
      $stdout.puts "##############################################################".bold.blue
      output = welcome_art.asciify("Rack2Aws").bold.blue
      output << "v#{Rack2Aws::VERSION} (>o<)".bold.blue
      $stdout.puts output
      $stdout.puts "#############################################################".bold.blue
    end

    def warn(msg)
      output = "WARNING: ".bold
      output << msg
      output.brown
    end

  end
end
