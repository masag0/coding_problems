# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    hsh = {}
    for i in 0...nums.length
        return [hsh[nums[i]], i] if hsh[nums[i]] && target - nums[i] == nums[i]
        hsh[nums[i]] = i
        return [hsh[target - nums[i]], i] if hsh[target - nums[i]] && hsh[target - nums[i]] != i
    end
    return []
end