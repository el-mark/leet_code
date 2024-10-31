class Solution:
    def addDigits(self, num: int) -> int:
        while len(str(num)) > 1:
            num_array = [int(digit) for digit in str(num)]
            sum = 0
            for number in num_array:
                sum += number

            num = sum
            
        return num
        