# Enter your code here. Read input from STDIN. Print output to STDOUT
i = gets.strip.to_i
(0..i-1).each do |k|
    line = gets.strip.split(" ")
    type = line.first.to_i
    val = line[1].to_i

end
