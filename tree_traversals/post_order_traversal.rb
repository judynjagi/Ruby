Postorder Traversal:

Algorithm Postorder(tree)
   1. Traverse the left subtree, i.e., call Postorder(left-subtree)
   2. Traverse the right subtree, i.e., call Postorder(right-subtree)
   3. Visit the root.
Uses of Postorder
Postorder traversal is used to delete the tree.
Please see the question for deletion of tree for details.
Postorder traversal is also useful to get the postfix expression of an expression tree. 

def post_order(node)
    return [] if node.nil?
    results = []
    results.concat post_order(node.left)
    results.concat post_order(node.right)
    results << node.val
    results
  end