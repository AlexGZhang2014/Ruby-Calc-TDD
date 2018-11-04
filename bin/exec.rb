require_relative "../lib/calc.rb"

calc = Calculator.new

puts "Here is your calculator. What do you want to do?"
puts "1 - Add"
puts "2 - Subtract"
puts "3 - Multiply"
puts "4 - Divide"

input = gets.strip.to_i

if input == 1
  puts "Enter a number"
  first_num = gets.strip.to_i
  puts "Enter the number to be added"
  second_num = gets.strip.to_i
  sum = calc.add(first_num, second_num)
  if sum.class == "Fixnum"
    puts "Here is your sum: #{sum}"
  else
    puts "Sorry, your sum isn't a number. Please try again."
  end
elsif input == 2
  puts "Enter a number"
  first_num = gets.strip.to_i
  puts "Enter the number to subtract"
  second_num = gets.strip.to_i
  difference = calc.subtract(first_num, second_num)
  if difference.class == "Fixnum"
    puts "Here is your difference: #{difference}"
  else
    puts "Sorry, your difference isn't a number. Please try again."
  end
elsif input == 3
  puts "Enter a number"
  first_num = gets.strip.to_i
  puts "Enter the number to multiply by"
  second_num = gets.strip.to_i
  product = calc.multiply(first_num, second_num)
  if product.class == "Fixnum"
    puts "Here is your product: #{product}"
  else
    puts "Sorry, your product isn't a number. Please try again."
  end
elsif input == 4
  puts "Enter a number"
  first_num = gets.strip.to_i
  puts "Enter the number to divide by"
  second_num = gets.strip.to_i
  if second_num == 0
    puts "Sorry, you can't divide by zero."
  else
    quotient = calc.divide(first_num, second_num)
    if quotient.class == "Fixnum"
      puts "Here is your quotient: #{quotient}"
    else
      puts "Sorry, your quotient isn't a number. Please try again."
    end
  end
else
  puts "Whoops, that's not a valid input. Please try again."
end
