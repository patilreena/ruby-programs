#require gems
require 'cowsay'
require 'httparty'
require 'colored'
require 'catpix'
#Utilise catpix gem to output picture

class Intro
Catpix::print_image "cow.jpg",
  :limit_x => 0.35,
  :limit_y => 0,
  :center_x => true,
  :center_y => true,
  :bg => "white",
  :bg_fill => nil,
  :resolution => "high"
end
#Start; welcome + name retrieval
class Start
  def self.show_start
    puts "Welcome to BS-Talk!".bold.cyan
    sleep 1.5
    puts "What's your name?".red
    gets.chomp
  end
end
#Continue to script; display exit function
class Initiate
  def self.show_information
    puts "Type 'Out' to exit BS-Talk"
    sleep 1.5
    puts "Hit enter if you understand."
    gets
    puts "Start your conversation:"
  end
end
#Acutal API input and output loop
class Botloop
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  def user_name_prompt(name)
    print "#{name}: "
  end
  def repetition
    loop do
      user_name_prompt(@name)
      @input = gets.chomp.downcase
      if @input == "out"
        sleep 1.5
        system("cowsay 'Fine, walk away. Scrub.'")
        exit
      else
        url = "https://www.cleverbot.com/getreply?key=CC3s41j3wDb2ygtXGp6Dir5pxew&input=#{@input}"
        @response = HTTParty.get(url)
        system("cowsay '#{@response["output"]}'")
      end
    end
  end
end
#What actually runs
Intro.new
name = Start.show_start
Initiate.show_information
botloop1 = Botloop.new(name)
botloop1.repetition
