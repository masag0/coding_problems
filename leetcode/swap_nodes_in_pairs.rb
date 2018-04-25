# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def swap_pairs(head)
    return head if !head or !head.next

    result = head.next
    curr = head
    old = head

    first = curr
    second = curr.next
    third = curr.next.next
    second.next = first
    first.next = third
    curr = third
    old = first

    while curr && curr.next
        first = curr
        second = curr.next
        third = curr.next.next
        second.next = first
        first.next = third
        old.next = second
        curr = third
        old = first
    end
    old.next = third if third
    result
end