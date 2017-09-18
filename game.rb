require 'colorize'
require 'byebug'


class Player
  attr_accessor(:name, :lives, :correct_answers)

  def initialize(name, lives=3)
    @name = name
    @lives = lives
    @correct_answers = 0
  end

  def correct
    @correct_answers += 1
  end

  def wrong
    @lives -= 1
  end
end

class Question

  def initialize
    @first_num = rand(1..50)
    @second_num = rand(1..50)
    @operator = rand(1..3)

    case @operator
    when 1
      @answer = @first_num + @second_num
      @op_string = '+'
    when 2
      @answer = @first_num - @second_num
      @op_string = '-'
    else
      @answer = @first_num * @second_num
      @op_string = '*'
    end
  end

  def to_string
    "What is #{@first_num} #{@op_string} #{@second_num} ?!?! "
  end

  def is_correct?(user_input)
    if user_input == @answer
      return true
    else
      return false
    end
  end


end

#REPL + game logic
@repl_bool = true
#0 for p1 1 for p2
@turn = 0

puts "A math game for Kids".colorize(:red)
puts

print 'Enter Player 1 name: '
@username = gets.chomp
p1 = Player.new(@username)
p1.name = p1.name.colorize(:red)
print 'Enter Player 2 name: '
@username = gets.chomp
p2 = Player.new(@username)
p2.name = p2.name.colorize(:red)

puts
puts "Lets start the game"
puts

while @repl_bool

  question = Question.new

  case @turn
  when 0
    print "#{p1.name}: "
  else
    print "#{p2.name}: "
  end

  print question.to_string
  @user_input = gets.chomp.to_i

  if @turn == 0 && question.is_correct?(@user_input)
    puts "CORRECT!".colorize(:green)
    p1.correct
    @turn += 1
  elsif @turn == 0 && !question.is_correct?(@user_input)
    puts "WRONG!".colorize(:red)
    p1.wrong
    @turn += 1
  elsif @turn == 1 && question.is_correct?(@user_input)
    puts "CORRECT!".colorize(:green)
    p2.gain_point
    @turn -= 1
  elsif @turn == 1 && !question.is_correct?(@user_input)
    puts "WRONG!".colorize(:red)
    p2.wrong
    @turn -= 1
  end

  puts
  puts "The score so far:
        #{p1.name}: #{p1.correct_answers} CORRECT ANSWERS #{p1.lives} REMAINING LIVES
        #{p2.name}: #{p2.correct_answers} CORRECT ANSWERS #{p2.lives} REMAINING LIVES"
  puts

  if p1.lives < 1 || p2.lives <1
    puts "Game OVER."
    if p1.lives < 1
      puts "The winner is #{p2.name}"
    elsif p2.lives < 1
      puts "The winner is #{p1.name}"
    end

    puts "The final score was:
        #{p1.name}: #{p1.correct_answers} CORRECT ANSWERS #{p1.lives} REMAINING LIVES
        #{p2.name}: #{p2.correct_answers} CORRECT ANSWERS #{p2.lives} REMAINING LIVES"

    @repl_bool = false
  end

end
