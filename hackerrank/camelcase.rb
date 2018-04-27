#!/bin/ruby

def camelcase(s)
    # Complete this function
    result = []
    idx = 0
    s.each_char.with_index do |ch, i|
        if ch == ch.upcase
            result << s[idx..i-1]
            idx = i
        end
    end
    result << s[idx..-1]
    result.size
end

s = gets.strip
result = camelcase(s)
puts result