def fizzbuzz(int)
    [*1..int].each do |n|
        if n % 15 == 0
            puts "FizzBuzz"
        elsif n % 3 == 0
            puts "Fizz"
        elsif n % 5 == 0
            puts "Buzz"
        else
            puts n
        end
    end
end


int = gets.to_i
fizzbuzz(int)
