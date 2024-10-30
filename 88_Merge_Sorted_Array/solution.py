
from typing import List

class Solution:
    def merge(self, nums1: List[int], m: int, nums2: List[int], n: int) -> None:
        """
        Do not return anything, modify nums1 in-place instead.
        """
        print(f'nums1: {nums1}')
        new_array = []
        for number1 in nums1:
            for number2 in nums2:
                print(f'number1: {number1}')
                print(f'nums2[index2]: {number2}')
                if number2 < number1 or number1 == 0:
                    new_array.append(nums2.pop(0))
                else:
                    new_array.append(number1)
                    break
        print(f'new_array: {new_array}')
        nums1 = new_array
        print(f'nums1: {nums1}')
        