def move_zeroes(nums)
    first = 0
    second = 0
    while true
        second += 1 until nums[second] != 0 || second == nums.length-1
        first += 1 until nums[first] == 0 || first == nums.length-1
        nums[first], nums[second] = nums[second], nums[first]
        break if first >= nums.length-1 || second >= nums.length-1
    end
    nums
end

p move_zeroes([0, 1, 0, 3, 12])
p move_zeroes([0])
p move_zeroes([1,0])
p move_zeroes([0,0,1])