# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  common_prefix = ''
  search_prefix = strs[0] == '' ? false : true

  new_common_prefix = ''

  (0...strs[0].length).each do |counter|
      common_character = strs[0][counter]

      strs.each do |word|
          search_prefix = false if word[counter] != common_character
      end

      break unless search_prefix
      common_prefix += common_character
  end

  common_prefix
end