def remove_duplicates(nums)
    count = 0
    i = 0
    while i < nums.length
        num = nums[i]
        j = i
        until nums[j] != num
            return nums[0..count] if j > nums.length
            j += 1
        end
        nums[i+1], nums[j] = nums[j], nums[i+1]
        count += 1
        i = j+1
    end

    nums[0..count]
end

remove_duplicates([1,1,2])