# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
    curr = 0
    nonzero = 0
    nums.each_with_index do |el, idx|
        if el != 0
            nums[idx], nums[nonzero] = nums[nonzero], nums[idx]
            nonzero += 1
        end
    end

end

p move_zeroes([0, 1, 0, 3, 12])
p move_zeroes([0])
p move_zeroes([1,0])
p move_zeroes([0,0,1])