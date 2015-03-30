
puts "Enter The Temperature to Convert it to F"
temp = gets.chomp
def c2f(temp)
	f = temp.to_i*9/5+32
	return f
end

puts  c2f(temp).to_s + " degrees"
