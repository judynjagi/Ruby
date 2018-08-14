# uses data structure called a “stack”
# LIFO (last in, first out) 
# adj_matrix is the adjacency matrix representation of the graph implemented as an array of arrays in Ruby
def depth_first_search(adj_matrix, source_index, end_index)
    node_stack = [source_index]
    # The code uses a forever loop and then breaks when we encounter certain conditions.
    loop do
      curr_node = node_stack.pop
      return false if curr_node == nil
      return true if curr_node == end_index

      # Out of the adjacency matrix, pick the “children” of curr_node by checking the 1’s in the adjacency matrix
      children = (0..adj_matrix.length-1).to_a.select do |i| 
        adj_matrix[curr_node][i] == 1
      end
      
      # Take those nodes and push them onto the end of the stack
      node_stack = node_stack + children
    end
  end