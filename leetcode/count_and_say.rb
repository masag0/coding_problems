# @param {Integer} n
# @return {String}
def count_and_say(n)
    return "1" if n <= 1
    result = ""

    last = count_and_say(n-1)

    i = 0
    while i < last.length
        c_len = 0
        curr = last[i]
        while curr == last[i] && i < last.length
            c_len += 1
            i += 1
        end
        result += c_len.to_s + last[i-1]
    end

    result

end