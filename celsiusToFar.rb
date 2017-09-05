require 'terminal-table'

class Celsius
  # How do we describe it
  def initialize(temperatureInC, day)
    @temperatureInC = temperatureInC
    @day = day
  end

  attr_accessor :temperature, :day


end


daysOfTheWeek = ["Mon", "Tues", "Wed", "Thurs", "Fri", "Sat", "Sun"]

@rows = []

daysOfTheWeek.each do |day|

  puts "Enter the temperature for #{day}: "

  @temperatureInC = gets.chomp.to_i

  @temperatureInF = (@temperatureInC * 1.8 + 32).round

  @rows.push [day, "#{@temperatureInC} degrees C", "#{@temperatureInF} degrees F"]

end

# puts "Rows: #{@rows}"

table = Terminal::Table.new :title => "Temperature Conversion", :headings => ['Day', 'Celsius', 'Fahrenheit'], :rows => @rows

puts table
