# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  # first try
  # number_as_text = x.to_s
  # half_the_way = number_as_text.length / 2
  # (0...half_the_way).each do |index|
  #    opposite_index = (index * -1) - 1
  #    return false unless number_as_text[index] == number_as_text[opposite_index]
  # end
  # true

  number_as_text = x.to_s
  number_as_text == number_as_text.reverse
end
