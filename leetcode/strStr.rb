# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
    return 0 if needle.empty?
    lo = 0
    hi = needle.length-1
    while hi < haystack.length
        return lo if haystack[lo..hi] == needle
        lo += 1
        hi += 1
    end

    -1
end