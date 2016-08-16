class ComplexNum
    attr_reader :numeric, :imaginary

    def initialize(numeric, imaginary)
        @numeric = numeric
        @imaginary = imaginary
    end

    def str
        case
            when 0 <= @imaginary
                "#{@numeric}+#{@imaginary}i"
            else
                "#{@numeric}#{@imaginary}i"
        end
    end

    def +(complex)
        @numeric += complex.numeric
        @imaginary += complex.imaginary
        str
    end

    def -(complex)
        @numeric -= complex.numeric
        @imaginary -= complex.imaginary
        str
    end

    def *(complex)
        @numeric *= complex.numeric
        @imaginary *= complex.imaginary
        str
    end

    def /(complex)
        @numeric /= complex.numeric
        @imaginary /= complex.imaginary
        str
    end
end

a = ComplexNum.new(2, -3)
b = ComplexNum.new(3, 6)

puts a + b
puts a - b
puts a * b
puts a / b