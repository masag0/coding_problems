# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
    result = []

    generate(result, n, 0, "")
    result
end

def generate(arr, open, close, str)
    arr << str if open == 0 && close == 0
    if open > 0
        generate(arr, open-1, close+1, str + "(")
    end
    if close > 0
        generate(arr, open, close-1, str + ")")
    end
end