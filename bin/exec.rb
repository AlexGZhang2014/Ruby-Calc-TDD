require_relative "../lib/calc.rb"

calc = Calculator.new

puts "Here is your calculator. What do you want to do?"
puts "1 - Add"
puts "2 - Subtract"
puts "3 - Multiply"
puts "4 - Divide"

input = gets.strip.to_i

if input == 1
  puts "Which numbers are you adding?"
  first_num = gets.strip.to_i
  second_num = gets.strip.to_i
  sum = calc.add(first_num, second_num)
  puts sum
else
  puts "done"
end
