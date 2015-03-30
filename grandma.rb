def year 
    rand(1930..1980)
end
byecount = 1
puts "Hey there Sonny boy, where are you going?"
response = gets.chomp
puts byecount
while byecount < 3
    if  byecount == 3
        puts "SEE YA"
        exit
    elsif byecount == 2
        puts "NO PLEASE DON'T GO!!"
        byecount+=1
        response = gets.chomp    
        puts byecount
    else
        
        case
        when response == "BYE"
            puts "WHAT WAS THAT? ARE YOU LEAVING?"
            byecount+=1
            puts byecount
            response = gets.chomp
        when response == response.upcase
            puts "NO! NOT SINCE #{year}"
            response = gets.chomp
        when response == response
            puts "HUH?! SPEAK UP SONNY!!!"
            response = gets.chomp

        end  
    end
end