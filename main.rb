require_relative 'app'
require 'optparse'

@options = {}

OptionParser.new do |parser|
  parser.banner = "Usage: main.rb [options]"

  parser.on("-u", "--user=NAME", "Username to lookup") do |v|
    @options[:user] = v
  end 

  parser.on("-e", "--export", "Exports playlists to text times") do |v|
    @options[:export] = true
  end
end.parse!

raise ArgumentError.new("requires user flag") if @options[:user].nil?

app = App.new(@options)
if @options[:export]
  app.export_library(true)
else
  app.price_library
end

