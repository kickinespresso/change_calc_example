#Calc Change 2 
#April 16 2016

def change(amount, value, name)
  count = amount / value
  #puts "#{count} #{name}" if count != 0 
  #if count != 0
    #puts "#{count} #{name}"
  #end 
  
  #unless count == 0
    #puts "#{count} #{name}"
  #end
  puts "#{count} #{name}" unless count == 0 
  amount -= value * count 
end

puts "Hi this is my change calculator" #\n
print "Enter your bill: " # 21.32   # 21.353
bill = gets.chomp.to_f.round(2)
print "Enter in the amount you will pay the bill with: " #22.00
paid_amount = gets.chomp.to_f.round(2)

puts "your bill is #{bill}"
puts "your paid amount is #{paid_amount}"

if bill > paid_amount
  puts "pay more money you cheapskate"
else
  amount = (bill - paid_amount).abs
  puts "your change will be #{amount.round(2)}"
  
  #change the amount to an integer
  amount *= 100
  amount = amount.to_i
  {Twenties: 2000, Tens: 1000, Fives: 500, Ones: 100, Quarters: 25, Dimes: 10, Nickles: 5, Pennies: 1}.each do |money, value|
     amount = change(amount, value, money.to_s) 
  end

end

