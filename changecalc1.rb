#Calc Change
#April 16 2016

puts "Hi this is my change calculator" #\n
print "Enter your bill: " # 21.32   # 21.353
#bill = gets
#bill = bill.chomp
#bill = bill.to_f
#bill = bill.round(2)
bill = gets.chomp.to_f.round(2)
print "Enter in the amount you will pay the bill with: " #22.00
paid_amount = gets.chomp.to_f.round(2)

puts "your bill is #{bill}"
puts "your paid amount is #{paid_amount}"

change = 0
if bill > paid_amount
  puts "pay more money you cheapskate"
else
  amount = (bill - paid_amount).abs
  puts "your change will be #{amount.round(2)}"
  

  
  #amount = 3.21
  
  #amount = amount * 100 
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


  # dimes
  count = amount / 10
  amount -= 10 * count 
  puts "#{count} dimes" 

  # nickles
  count = amount / 5
  amount -= 5 * count 
  puts "#{count} nickles" 

  # pennies
  puts "#{amount} pennies"


end
