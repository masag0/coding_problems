# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    sum = l1.val + l2.val
    result = ListNode.new(sum % 10)
    carry = sum / 10
    curr = result
    l1 = l1.next
    l2 = l2.next
    while (l1 || l2)
        if l1 && l2
            sum = l1.val + l2.val
        elsif l1
            sum = l1.val
        else
            sum = l2.val
        end
        sum = sum + carry
        carry = sum / 10
        temp = ListNode.new(sum % 10)
        curr.next = temp
        curr = temp
        l1 = l1.next if l1
        l2 = l2.next if l2
    end

    curr.next = ListNode.new(carry) if carry != 0
    result
end