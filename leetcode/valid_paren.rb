# @param {String} s
# @return {Boolean}
def is_valid(s)
  hash = { '}' => '{', ']' => '[', ')' => '('}
  stack = []

  s.each_char do |ch|
    if hash.has_value?(ch)
      stack << ch
    elsif hash.has_key?(ch)
      return false if stack.pop != hash[ch]
    end
  end
  
  stack.empty? ? true : false
end