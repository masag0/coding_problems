# @param {String} digits
# @return {String[]}
def letter_combinations(digits)
    hash = { '2' => ['a','b','c'],
             '3' => ['d','e','f'],
             '4' => ['g','h','i'],
             '5' => ['j','k','l'],
             '6' => ['m','n','o'],
             '7' => ['p','q','r','s'],
             '8' => ['t','u','v'],
             '9' => ['w','x','y','z'],
           }
    return [] if digits == '1' || digits == ""
    return hash[digits[0]] if digits.length == 1

    result = []

    letter_combinations(digits[0...-1]).each do |str|
        hash[digits[-1]].each do |ch|
            result << str + ch
        end
    end

    result
end