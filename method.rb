# write a method that takes 2 inputs first name and tha last name
#
# the method adds the the input,
# reverse the string and return the result
#add a third argument specifying the type of string manipulation



#
# def add_and_reverse(first, last, choice)
# case choice
# when "forwards"
#   puts "first + last"
# when "backwords"
#   puts (first + last).reverse
# end
# end
#
# puts "forward or backwords?"
# user_input = gets.chomp
# add_and_reverse("reena", "patil",user_input)

#
# i = 0
# loop do
#   i += 1
#   puts i
#   if i == 10
#     break
#   end
# end

# puts "Display options
#     1-🐶 2-🐱 3-🦎"

# def test
#    i = 100
#    j = 200
#    k = 300
# return i, j, k
# end
# var = test
# #puts var

# Make 3 instances of Taxi (3 Taxi objects)
# class Taxi
# 	def initialize(rego_number,driver)
# 		@rego_number = rego_number
#     @driver = driver
# 	end
#
#   def taxi_color
#   end
#
#   def taxi_num
#   end
#
#   def taxi_brand
#   end
#
# end
#
#
# class TaxiRide
#
#   def initialize(taxi, passenger_name, origin, destination, distance)
#     @taxi = taxi
#     @passenger_name = passenger name
#     @origin = origin
#     @destination = destination
#     @distance = distance
#   end
#
#   def calculate_fare
#   	@distance * 1.40
#   end
#
# end

# i = 0
# until i == 11
#    puts i
#    i += 1
# end



# class TaxiRide
#
#   def initialize(taxi, passenger_name, origin, destination, distance)
#     @taxi = taxi
#     @passenger_name = passenger name
#     @origin = origin
#     @destination = destination
#     @distance = distance
#   end
#
#   def calculate_fare
#   	@distance * 1.40
#   end
#
# end



# i = 0
# until i > 10
#    puts "Enter a number greater than 10"
#    i = gets.chomp.to_i
# end
#
# def say(words)
#   puts words
# end
#
# say("hello")


def length_array(array)
  return array.length
end

length = length_array(["reena","luke"])
puts length
