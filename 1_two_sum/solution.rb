# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  hash_nums = {}
  (1...nums.length).each do |i|
    hash_nums[nums[i]] = i
  end

  second_to_last_position = nums.length - 1
  (0...second_to_last_position).each do |i|
    needed_pair = target - nums[i]
    needed_pair_index = hash_nums[needed_pair]
    return [i, needed_pair_index] if !needed_pair_index.nil? && needed_pair_index != i
  end
end
