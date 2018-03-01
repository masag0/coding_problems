# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  substrings = []
  for i in 0...s.length
    for j in i...s.length
      temp = {}
      bool = true
      s[i..j].each_char do |ch|
        bool = false if temp[ch]
          temp[ch] = true
      end
      substrings << s[i..j] if bool
    end
  end
  result = ""

  substrings.each do |str|
    result = str if str.length > result.length
  end

  result.length
end