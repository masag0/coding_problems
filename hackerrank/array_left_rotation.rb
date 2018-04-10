#!/bin/ruby

n,k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)

result = []

(0...a.length).each do |i|
   result << a[ (i + k) % n ]
end

puts result.join(" ")