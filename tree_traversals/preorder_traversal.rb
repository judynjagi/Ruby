Algorithm Preorder(tree)
   1. Visit the root.
   2. Traverse the left subtree, i.e., call Preorder(left-subtree)
   3. Traverse the right subtree, i.e., call Preorder(right-subtree) 
Uses of Preorder
Preorder traversal is used to create a copy of the tree.
Preorder traversal is also used to get prefix expression on of an expression tree.

def pre_order(node)
    return [] if node.nil?
    results = []
    results << node.val
    results.concat pre_order(node.left)
    results.concat pre_order(node.right)
    results
  end