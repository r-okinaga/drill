class Company
    attr_reader :name, :address, :n_employee

    def initialize(name, address, n_employee)
        @name = name
        @address = address
        @n_employee = n_employee
    end

    def employ(employee)
        @n_employee += 1
    end

    def retire(employee)
        raise 'cannot retire more' if employee == 0
        @n_employee -= 1
    end

    def profile
        puts "-------------------------"
        puts "会社名: 【#{@name}】"
        puts "住所: 【#{@address}】"
        puts "従業員数: 【#{@n_employee}】"
        puts "-------------------------"
    end
end

c = Company.new('gc', 'Tokyo', 34)
c.employ('okinaga')
c.profile
c.retire('okinaga')
c.profile