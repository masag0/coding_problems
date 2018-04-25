# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
    count = 0
    lo = 0
    hi = nums.length-1
    while lo <= hi
        if nums[lo] != val
            lo += 1
            next
        elsif nums[hi] == val
            hi -= 1
            count += 1
        elsif nums[lo] == val && nums[hi] != val
            nums[lo], nums[hi] = nums[hi], nums[lo]
            count += 1
            lo += 1
            hi -= 1
        end
    end

    nums.length - count

    #interesting solution
    # @param {Integer[]} nums
    # @param {Integer} val
    # @return {Integer}
    # def remove_element(nums, val)
    #     count = 0
    #     nums.each do |num|
    #         if num != val
    #             nums[count] = num
    #             count += 1
    #         end
    #     end
    #     count
    # end
end