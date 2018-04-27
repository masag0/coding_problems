# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)

    nums.each_with_index do |el, i|
        if el == target
            return i
        elsif el > target
            return 0 if i == 0
            return i
        end
    end
    nums.length
end