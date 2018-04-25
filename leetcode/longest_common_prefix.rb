# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)

    return "" if strs.empty?
    return strs[0] if strs.length == 1

    prev = strs[0]
    prefix = ""
    strs[1..-1].each do |str|
        i = 0
        while i < str.length
            if str[i] == prev[i]
                prefix += str[i]
            else
                break
            end
            i += 1
        end
        return "" if prefix == ""
        prev = prefix
        prefix = ""
    end
    prev
end