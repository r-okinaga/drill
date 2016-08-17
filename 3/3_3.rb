def common_divisor(m, n)
    common_div = []
    [*1..m].each do |num|
        if m % num == 0 && n % num == 0
            common_div << num
        end
    end
    common_div
end

puts common_divisor(24, 12)