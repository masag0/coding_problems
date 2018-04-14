#!/bin/ruby

def balanced?(expression)
    dict = { ")" => "(", "]" => "[", "}" => "{"}
    stack = []

    expression.each_char do |ch|
        if dict.values.include?(ch)
            stack << ch
        elsif dict.keys.include?(ch)
            return false if stack.pop != dict[ch]
        end
    end

    return false if !stack.empty?
    true
end

t = gets.strip.to_i
for a0 in (0..t-1)
    expression = gets.strip
    puts (balanced?(expression) ? "YES" : "NO")
end