# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def find_kth_largest(nums, k)
    return nil if nums.length <= 1
    pivot_idx = partition(nums, 0, nums.length-1)

    if pivot_idx == k - 1
        return nums[pivot_idx]
    elsif pivot_idx < k - 1
        partition(nums, pivot_idx+1, nums.length-1)
    else
        partition(nums, 0, pivot_idx-1)
    end
end

def partition(array, start, finish)
    pivot = rand(finish+1)
    barrier = start+1
    array[start+1..finish].each_with_index do |el, idx|
        if el < array[pivot]
            array[idx], array[barrier] = array[barrier], array[idx]
            barrier += 1
        end
    end
    array[pivot], array[barrier-1] = array[barrier-1], array[pivot]
    barrier - 1
end