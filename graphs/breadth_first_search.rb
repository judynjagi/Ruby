# FIFO first in first out
# Finds an element in a queue in the shortest path possible

def breadth_first_search(adj_matrix, source_index, end_index)
    node_queue = [source_index]
  
    loop do
      # returns the last element of node_queue
      curr_node = node_queue.pop
  
      return false if curr_node == nil
      return true if curr_node == end_index
  
      children = (0..adj_matrix.length-1).to_a.select do |i| 
        adj_matrix[curr_node][i] == 1
      end
      # Since we are adding elements to the beginning of the list,
      # taking an element from the end of the list would give us 
      # the element inserted first not the element inserted last
      node_queue = children + node_queue
    end
  end

  adj_matrix = [
  [0, 0, 1, 0, 1, 0],
  [0, 0, 1, 0, 0, 1],
  [0, 0, 0, 1, 0, 0],
  [0, 0, 0, 0, 1, 1],
  [0, 0, 1, 0, 1, 0],
  [0, 1, 0, 0, 0, 0]
]

p breadth_first_search(adj_matrix, 0, 4)