# @param {Integer} x
# @return {Integer}
def reverse(x)
    result = 0
    if x < 0
        neg = true
        x = x*-1
    end

    while x != 0
        ones = x % 10
        temp = result * 10 + ones

        return 0 if temp > 2147483647

        x /= 10
        result = temp
    end

    neg ? -result : result
end