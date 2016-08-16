def foo(str)
    case
        when str.length <= 4
            "短すぎます!"
        when 32 <= str.length
            "長すぎます!"
        else
            "OK!"
    end
end

puts foo("1234" * 1)