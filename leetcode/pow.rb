# @param {Float} x
# @param {Integer} n
# @return {Float}
def my_pow(x, n)
    return 1 if n == 0
    return x if n == 1
    result = 1
    if n < 0
        return 1.0/(my_pow(x,-n))
    else
        return (n % 2 == 0) ? my_pow(x*x, n/2) : x * my_pow(x*x, n/2);
    end
end