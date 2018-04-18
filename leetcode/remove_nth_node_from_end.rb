# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
    hash = {}
    curr = head
    count = 0
    while curr
        hash[count] = curr
        count += 1
        curr = curr.next
    end

    if count <= 1
        head.val = nil
        return head
    end
    remove_node = hash[count-n]
    prev = hash[count-n-1]
    after = hash[count-n+1]
    if remove_node == head
        head = after
    else
        prev.next = after if prev
        remove_node.next = nil
    end

    head
    # 
    # curr = head
    # prev = head
    #
    # n.times do
    #     curr = curr.next
    # end
    #
    # if !curr
    #     head = head.next
    #     return head
    # end
    #
    # while curr.next
    #     curr = curr.next
    #     prev = prev.next
    # end
    #
    # prev.next = prev.next.next
    #
    # head
end