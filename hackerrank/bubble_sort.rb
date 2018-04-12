#!/bin/ruby

n = gets.strip.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)

swapped = true
count = 0
while swapped
    swapped = false
    (0...a.length-1).each do |i|
        if a[i] > a[i+1]
            a[i], a[i+1] = a[i+1], a[i]
            swapped = true
            count += 1
        end
    end
end

puts "Array is sorted in #{count} swaps."
puts "First Element: #{a[0]}"
puts "Last Element: #{a[-1]}"