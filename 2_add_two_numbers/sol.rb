# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  sum = reconstruct_number(l1) + reconstruct_number(l2)

  linked_list_number(sum)
end

def reconstruct_number(first_node)
  concat_value = 0
  actual_node = first_node
  multiplier = 1
  while actual_node
      concat_value = concat_value + actual_node.val * multiplier
      actual_node = actual_node.next
      multiplier *= 10
  end
  concat_value
end

def linked_list_number(integer)
  remaining_number = integer
  is_next_number = true
  array = []
  while is_next_number == true
      array << remaining_number % 10
      if remaining_number / 10  < 1
          is_next_number = false
      else
          remaining_number = (remaining_number / 10).to_i
      end
  end

  puts array
  # ListNode(value, next_value)
  next_node = nil

  array.length.times do
      node = ListNode.new(array.pop, next_node)
      next_node = node
  end

  next_node
end
