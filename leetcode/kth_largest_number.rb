require 'byebug'
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def find_kth_largest(nums, k)
  return nums.first if nums.length <= 1
  pivot_idx = partition(nums, 0, nums.length-1)

  if pivot_idx == k-1
      return nums[pivot_idx]
  elsif pivot_idx < k-1
      find_kth_largest(nums[pivot_idx+1...nums.length], k-pivot_idx-1)

  else
      find_kth_largest(nums[0..pivot_idx-1], k)
  end
end

def partition(array, start, last, &prc)
    prc ||= Proc.new { |el1, el2| -1 * (el1 <=> el2) }
    pivot = start
    barrier = start+1
    array[start+1..last].each_with_index do |el, idx|
        if prc.call(el, array[pivot]) < 0
            array[start+1+idx], array[barrier] = array[barrier], array[start+1+idx]
            barrier += 1
        end
    end
    array[start], array[barrier-1] = array[barrier-1], array[start]
    barrier - 1
end
# p partition([5,4,3], 0, 2)
p find_kth_largest([1,4,6,8,2,5,3,4], 4)
p find_kth_largest([5,4,3], 3)
p find_kth_largest([1], 1)
p find_kth_largest([], 1)