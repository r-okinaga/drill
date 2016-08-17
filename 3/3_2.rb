def divisor(int)
    div = []
    [*1..int].each do |n|
        if int % n == 0
            div << n
        end
    end
    div
end

puts divisor(12)