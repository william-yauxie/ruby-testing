require "./main"

describe Password do

    it "is at least 5 characters long" do
        password = Password.new("12345")
        expect(password.get_password.size).to be >= 5
    end

    it "contains sandwich" do
        password = Password.new("wichsand")
        expect("sandwich").not_to match(password.get_password)
    end

    it "isn't a palindrome" do
        password = Password.new("asdfg")
        expect(password.is_palidrome?).to be false
    end

end
