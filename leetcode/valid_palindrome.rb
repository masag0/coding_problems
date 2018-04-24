# @param {String} s
# @return {Boolean}
def is_palindrome(s)

    return true if s.length <= 1
    reversed = ""
    string = ""
    s.each_char do |ch|
        string += ch.downcase if ch.downcase =~ /[0-9a-z]/
    end

    (s.length-1).downto(0).each do |i|
        reversed += s[i].downcase if s[i].downcase =~ /[0-9a-z]/
    end
    p reversed
    p string
    reversed == string
end