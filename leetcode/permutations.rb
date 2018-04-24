# @param {Integer[]} nums
# @return {Integer[][]}
def permute(nums)
    return [nums] if nums.length < 2
    result = []
    permute(nums[0...-1]).each do |arr|
        result << [nums[-1]] + arr
        arr.each_index do |i|
            result << arr[0..i] + [nums[-1]] + arr[i+1..-1]
        end
    end
    result
end