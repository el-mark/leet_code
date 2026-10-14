# @param {String} s
# @return {Integer}
ROMAN_NUMBERS_HASH = {
    'I' => 1,
    'v' => 4,
    'V' => 5,
    'x' => 9,
    'X' => 10,
    'l' => 40,
    'L' => 50,
    'c' => 90,
    'C' => 100,
    'd' => 400,
    'D' => 500,
    'm' => 900,
    'M' => 1000
}.freeze

def roman_to_int(s)
    parsed_number = s.gsub('IV', 'v').gsub('IX','x').gsub('XL','l').gsub('XC','c').gsub('CD','d').gsub('CM','m')
    
    parsed_number.each_char.sum do |char|
        ROMAN_NUMBERS_HASH[char]
    end
end
