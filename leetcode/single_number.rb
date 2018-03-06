# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
    # [3,1,5,3,1]
    set = Set.new
    nums.each do |num|
        if set.include?(num)
            set.delete(num)
        else
            set << num
        end
    end
    set.to_a.first
end