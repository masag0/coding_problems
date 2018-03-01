# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  hsh = {}
  max = 0
  i, j = 0, 0

  while j < s.length && i < s.length
    if hsh[s[j]]
      i = hsh[s[j]] + 1 if hsh[s[j]] + 1 > i
    end
    hsh[s[j]] = j
    max = s[i..j].length if s[i..j].length > max
    j += 1
  end

  max
end

p length_of_longest_substring('pwwkew')
p length_of_longest_substring('dvdf')
p length_of_longest_substring('abcabcbb')
p length_of_longest_substring('bbbbbb')
p length_of_longest_substring('abba')
p length_of_longest_substring("tmmzuxt")