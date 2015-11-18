require "rubygems"
require "irb/completion"

require "awesome_print"
require "ap"
AwesomePrint.irb!

# Load Brice (was wirble) (colouring etc in irb)
=begin
begin
      require 'wirble'

      Wirble.colorize
    rescue LoadError => err
      $stderr.puts "Couldn't load Wirble: #{err}"
    end
=end
begin
require 'brice/init'
 rescue LoadError => err
      $stderr.puts "Couldn't load Wirble: #{err}"
end

# Load Hirb (pretty formatting in irb)
require "hirb"
Hirb.enable



# Add Interesting Methods
class Object
  def imethods
    case self.class
    when Class
      ap self.methods.sort - Object.methods
    when Module
      ap self.methods.sort - Module.methods
    else
      ap self.methods.sort - Object.new.methods
    end
  end
end

# Add require_relative and guid
module Kernel
  def require_relative(file)
    $:.unshift Dir.pwd
    require file
  end

  def guid(s)
    s.scan(/[a-f0-9-]{36}/).first
  end
end

#Set up Aliasses
alias q exit

# IRB settings
IRB.conf[:AUTO_INDENT] = true
