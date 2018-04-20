# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
    hash = {}

    strs.each do |str|
        s = str.chars.sort.join
        hash[s] ||= []
        hash[s] << str
    end

    hash.values
end