=begin
Name : Dongok Yang
Course : WEBD-3008 (265257)
U0 - Challenge Zero (A New Beginning)
=end


#get and converts the input to a float
puts "Enter subtotal : "
sub_total = gets.chomp.to_f

#necessary variable and constants
GST = 0.07
PST = 0.05
grand_total = sub_total * (1+GST+PST)

#Print details
puts "Subtotal: $#{'%.2f' % sub_total}"
puts "PST: $#{'%.2f' % (sub_total * PST)} - #{(PST * 100).to_i}%"
puts "GST: $#{'%.2f' % (sub_total * GST)} - #{(GST * 100).to_i}%"
puts "Grand Total: $#{'%.2f' % grand_total}"

#Print a short message based on the amount of grand total
if grand_total <= 5
  puts "Pocket Change"
elsif grand_total < 20
  puts "Wallet Time"
else
  puts "Charge It!"
end