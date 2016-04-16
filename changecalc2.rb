#Calc Change 2 
#April 16 2016

def change(amount, value, name)
  count = amount / value
  puts "#{count} #{name}" 
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
  

  #break it down into 20 dollar
  count = amount / 2000
  amount -= 2000 * count 
  puts "#{count} 20 dollar bills" 

  #break it down into 10 dollar
  count = amount / 1000
  amount -= 1000 * count 
  puts "#{count} 10 dollar bills" 

  #break it down into 5 dollar
  count = amount / 500
  amount -= 500 * count 
  puts "#{count} 5 dollar bills" 

  #break it down into 1 dollar
  count = amount / 100
  amount -= 100 * count 
  puts "#{count}  1 dollar bills" 

  #break it down into quarters
  count = amount / 25
  #amount = amount - 25 * count
  amount -= 25 * count 
  #puts count.to_s + " quarters"
  puts "#{count} quarters" 

  amount = change(amount, 10, "Dimes") 
  # dimes


  amount = change(amount, 5, "Nickles")
  # nickles
 

  # pennies
  puts "#{amount} pennies"

end

