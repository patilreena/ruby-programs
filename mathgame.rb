class Player

  def initialize(name,level)
    @name = name
    @level = level
  end

  def name
    @name
  end

  def level
    @level
  end
end

class Question

  def initialize()
    @first_num = rand(1..100)
    @second_num = rand(1..100)
    @operator = rand(1..4)

  case @operator
  when 1
    @answer = @first_num + @second_num
    @op_string = '+'
  when 2
    @answer = @first_num - @second_num
    @op_string = '-'
  when 3
    @answer = @first_num * @second_num
    @op_string = '*'
  else
    @answer = @first_num / @second_num
    @op_string = '/'
  end
end

  def get_question
    "What is #{@first_num} #{@op_string} #{@second_num} ?!?! "
  end

  def check_answer(input)
    if input == @answer
      return true
    end
    return false;
  end
end

puts "A math game for kids"
puts "Enter player 1 name"
p1_name = gets.chomp
puts "Enter player 2 name"
p2_name = gets.chomp
puts "What level would you like to choose? please select the level 1-3"
level = gets.chomp.to_i
if level < 1 || level > 3
  puts "Please choose a level between 1-3"
  exit
end
puts "That's nice, let's play the game"

#instantiate the player 1 and player 2 classes
player1 = Player.new(p1_name,level)
player2 = Player.new(p2_name,level)

ques1 = Question.new
puts ques1.get_question()
ans1 = gets.chomp.to_i
is_correct = ques1.check_answer(ans1)
if is_correct
  puts "Right Answer"
else
  puts "Wrong Ans"
end
