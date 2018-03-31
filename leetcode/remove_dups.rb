# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    return 0 if nums.empty?
    i = 0
    (0..nums.length-1).each do |j|
        if nums[j] != nums[i]
            i += 1
            nums[i] = nums[j]
        end
    end

    i + 1
end

p remove_duplicates([])
p remove_duplicates([1])
p remove_duplicates([1, 1])
p remove_duplicates([1,1,2])
p remove_duplicates([1,2,3])
p remove_duplicates([1,2,2])
p remove_duplicates([1,1,2,2,2,2,3])