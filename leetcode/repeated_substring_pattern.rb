# @param {String} s
# @return {Boolean}
def repeated_substring_pattern(s)
    # return false if s.length < 2
    # (0...s.length/2).each do |i|
    #     pattern = s[0..i]
    #     pattern_length = i+1
    #     j = 0
    #
    #     while pattern == s[j...j+pattern_length]
    #         return true if j == s.length-pattern_length
    #         j += pattern_length
    #     end
    # end
    #
    # false

    (s+s)[1..-2].include?(s)
end