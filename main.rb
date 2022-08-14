=begin
print("Enter password: ")
password = gets
print("Password is: " + password)
=end

class Password 

    def initialize(user_password)
        @password = user_password
    end

    def get_password
        return "#@password"
    end

    def is_palidrome?
        # checks if palindrome
        # racecar
        # anna
        count = @password.size
        for i in 0..count - 1 do 
 #          puts ("entered for loop")
  #          puts (@password[i] + " and " + @password[count - 1 - i])
            if @password[i] != @password[count - 1 - i]
   #             puts (@password[i] + " and " + @password[count - 1 - i])
   #             puts ("is not palindrome")
                return false
            end
        end
        return true
    end

end

new_password = Password.new("asdf")
puts(new_password.get_password)
puts(new_password.is_palidrome?)