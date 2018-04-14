# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode[]} lists
# @return {ListNode}
def merge_k_lists(lists) #iterative and brute force
    return nil if lists.empty?
    return lists.first if lists.length == 1
#     min_node = find_min(lists)

#     result = min_node
#     curr = min_node

#     while !lists.empty? && curr
#         min = find_min(lists)
#         break if !min

#         curr.next = min
#         curr = curr.next
#     end
#     result
    unsorted = []
    lists.each do |list|
        curr = list
        while curr
            unsorted << curr
            curr = curr.next
        end
    end
    return unsorted if unsorted.empty?
    sorted = unsorted.sort {|a,b| a.val <=> b.val}
    result = sorted.first
    curr = result
    sorted[1..-1].each do |node|
        curr.next = node
        curr = curr.next
    end

    result

end

# def find_min(lists)
#     min = nil
#     temp = nil
#     index = nil
#     (0..lists.length-1).each do |i|
#         next if !lists[i]
#         if !min
#             min = lists[i].val
#             temp = lists[i]
#             index = i
#         end
#         if lists[i].val < min
#             min = lists[i].val
#             temp = lists[i]
#             index = i
#         end
#     end

#     if !temp
#         nil
#     else
#         lists[index] = temp.next
#         result = temp
#     end

# end