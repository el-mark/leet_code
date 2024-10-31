
from typing import List

class Solution:
    def merge(self, nums1: List[int], m: int, nums2: List[int], n: int) -> None:
        """
        Do not return anything, modify nums1 in-place instead.
        """
        pointer1 = 0
        pointer2 = 0
        nums_copy = nums1[:]
        if n != 0:
            for index in range(len(nums1)):
                if pointer2 >= n or (nums_copy[pointer1] < nums2[pointer2] and pointer1 < m):
                    nums1[index] = nums_copy[pointer1]
                    pointer1 += 1
                else:
                    nums1[index] = nums2[pointer2]
                    pointer2 += 1
        