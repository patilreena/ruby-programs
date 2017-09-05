require 'terminal-table'

class Health
  def initialize(height,weight,age)
    @height = height
    @weight = weight
    @aage = age
  end

  def height
    @height
  end

  def weight
    @weight
  end

  def age
    @age
  end

  def health_check
    bmi = bmi_calculate()
    if bmi < 18.5
      puts "Underweight"
    elsif 18.5 < bmi && bmi <= 25
      puts "normalweight"
    elsif 25 < bmi && bmi < 30
      puts "overweight"
    elsif bmi >= 30
      puts "obese"
    else
      puts "error"
    end
  end

  def bmi_calculate
    return @weight / (@height  * @height)
  end
end

class Exam
  def initialize()
      @subjects = ["maths", "science", "english"]
  end

  def subject
    @subject
  end

  def grade
    @grade
  end

  def exam_problem
    puts "Enter the exam course for following subjects"
    scores = []
    @subjects.each do |x|
      puts "#{x} score: "
      scores.push({:subject => x, :score => gets.chomp.to_i});
    end

    rows = []
    scores.each do |obj|
      if obj[:score] < 36
        rows.push([obj[:subject],  obj[:score], "Failed"])
      else
        rows.push([obj[:subject],  obj[:score], "Passed"])
      end
    end
    table = Terminal::Table.new :headings => ['Subject', 'Score', 'Result'], :rows => rows
    puts table
  end
end




def show_bmi
  puts "Enter your height (Meter)"
  height = gets.chomp.to_i
  puts "Enter your weight (KG)"
  weight = gets.chomp.to_i
  puts "Enter your age"
  age = gets.chomp.to_i

  result = Health.new(height, weight, age)
  result.health_check()
end

def suggest_travel_dest
  rows = []
  rows << ['January','Thailand']
  rows << ['February','Colombia']
  rows << ['March','Galapagos Islands']
  rows << ['April','Morocco']
  rows << ['May','Peru']
  rows << ['June','Iceland']
  rows << ['July','French Polynesia']
  rows << ['August','Indonesia']
  rows << ['September','Alaska']
  rows << ['October','Italy']
  rows << ['November','Vietnam']
  rows << ['December','Germany']

table = Terminal::Table.new :headings => ['Month', 'Country'], :rows => rows

puts "This is the ultimate travel destination planner, based on your month
     of travel, our smart travel will suggest where to go"
puts table
end

def select_option
  puts "What's your problem? [Health/Exam/Travel]?"
  problem = gets.chomp
  if problem == "health"
     show_bmi()
  elsif problem == "travel"
    suggest_travel_dest()
  elsif problem == "exam"
    exam = Exam.new()
    exam.exam_problem()
  else
    puts "no problems in life"
  end
end



#show_bmi()
#suggest_travel_dest()
select_option()
