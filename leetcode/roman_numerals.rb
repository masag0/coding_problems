# @param {String} s
# @return {Integer}
def roman_to_int(s)
    num = 0
    (0...s.length).each do |i|
        case s[i]
        when 'I'
            num += 1
        when 'V'
            if s[i-1] == 'I' && i != 0
                num += 4 - 1
            else
                num += 5
            end
        when 'X'
            if s[i-1] == 'I' && i != 0
                num += 9 - 1
            else
                num += 10
            end
        when 'L'
            if s[i-1] == 'X' && i != 0
                num += 40 - 10
            else
                num += 50
            end
        when 'C'
            if s[i-1] == 'X' && i != 0
                num += 90 - 10
            else
                num += 100
            end
        when 'D'
            if s[i-1] == 'C' && i != 0
                num += 400 - 100
            else
                num += 500
            end
        when 'M'
            if s[i-1] == 'C' && i != 0
                num += 900 - 100
            else
                num += 1000
            end
        end
        p num
    end
    num
end