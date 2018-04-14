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
def merge_two_lists(l1, l2)
    return l1 if !l1 && !l2
    return l2 if !l1
    return l1 if !l2
    p1 = l1
    p2 = l2

    if p1.val < p2.val
        result = p1
        p1 = p1.next
    else
        result = p2
        p2 = p2.next
    end

    curr = result

    while p1 && p2
        if p1.val < p2.val
            curr.next = p1
            p1 = p1.next
        else
            curr.next = p2
            p2 = p2.next
        end
        curr = curr.next
    end

    if p1
        curr.next = p1
    elsif p2
        curr.next = p2
    end

    result

end