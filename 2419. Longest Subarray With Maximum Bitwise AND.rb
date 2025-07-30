=begin
You are given an integer array nums of size n.

Consider a non-empty subarray from nums that has the maximum possible bitwise AND.

In other words, let k be the maximum value of the bitwise AND of any subarray of nums. Then, only subarrays with a bitwise AND equal to k should be considered.
Return the length of the longest such subarray.

The bitwise AND of an array is the bitwise AND of all the numbers in it.

A subarray is a contiguous sequence of elements within an array.

Example 1:

Input: nums = [1,2,3,3,2,2]
Output: 2
Explanation:
The maximum possible bitwise AND of a subarray is 3.
The longest subarray with that value is [3,3], so we return 2.
Example 2:

Input: nums = [1,2,3,4]
Output: 1
Explanation:
The maximum possible bitwise AND of a subarray is 4.
The longest subarray with that value is [4], so we return 1.
 

Constraints:

1 <= nums.length <= 10^5
1 <= nums[i] <= 10^6

=end

#The bitwise AND compares two numbers bit by bit.
#It returns 1 only if both bits are 1, otherwise it gives 0.
#To find the longest subarray with the maximum bitwise AND, we first find the maximum value in the array.
#Then, we count the length of the longest contiguous subarray that consists only of this maximum value.

def longest_subarray(nums)
  max_value = nums.max
  max_length = 0
  current_length = 0
  
  nums.each do |num|
    if num == max_value
      current_length += 1
      max_length = [max_length, current_length].max
    else
      current_length = 0
    end
  end
  
  max_length
end