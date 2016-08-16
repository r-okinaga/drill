def foo(int)
    [*1..int- 1].each do |n|
        print n
        case n % 5
            when 0
                print "\n"
            else
                print ","
        end
    end
    puts int
end

foo(8)