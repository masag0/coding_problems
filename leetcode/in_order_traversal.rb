# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[]}
def inorder_traversal(root)
    return [] if !root
    return [root.val] if !root.left && !root.right
    inorder_traversal(root.left) + [root.val] + inorder_traversal(root.right)
end