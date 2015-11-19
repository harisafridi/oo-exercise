
require 'YAML'

file = File.open('data.yml')

file.each do |line|
	puts line
end
