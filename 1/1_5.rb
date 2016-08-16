File.open("staffs.txt") do |f|
    f.readlines
end.each do |line|
    puts line if line.include? "ta"
end