# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
    result = []
    sorted = nums.sort
    a = 0

    while a < sorted.length
        if sorted[a] == sorted[a-1] && a > 0
            a += 1
            next
        end
        head = a+1
        tail = sorted.length-1

        while head < tail
            if sorted[a]+sorted[head]+sorted[tail] == 0
                result << [sorted[a], sorted[head], sorted[tail]]
                head += 1
                tail -= 1
                while sorted[head] == sorted[head-1] && head < tail
                    head += 1
                end
                while sorted[tail] == sorted[tail+1] && head < tail
                    tail -= 1
                end
            elsif sorted[a]+sorted[head]+sorted[tail] > 0
                tail -= 1
            else
                head += 1
            end
        end

        a += 1

    end

    result
end