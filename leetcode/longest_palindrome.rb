# @param {String} s
# @return {String}
# def longest_palindrome(s) #naive solution
#     subs = []
#     for i in 0..s.length
#         for j in i..s.length
#             subs << s[i..j] if s[i..j] == s[i..j].reverse
#         end
#     end
#     p subs
#     subs.max_by { |s| s.length }
# end

def longest_palindrome(s)
  longest = ""
  max = 0
  s.each_char.with_index do |ch, idx|
    spread = 0

    while (idx-spread >= 0 && idx+spread < s.length) && s[idx-spread] == s[idx+spread] #odd length palindromes
      if spread*2+1 > max
        longest = s[idx-spread..idx+spread]
        max = spread*2+1
      end
      spread += 1
    end
    spread = 0
    while (idx-spread-1 >= 0 && idx+spread < s.length) && s[idx-spread-1] == s[idx+spread] #even length palindromes
      if spread*2+2 > max
        longest = s[idx-spread-1..idx+spread]
        max = spread*2+2
      end
      spread += 1
    end

  end

  longest
end



p longest_palindrome('b')
p longest_palindrome('babad')
p longest_palindrome('baabad')
p longest_palindrome('badbab')
p longest_palindrome('badbaab')