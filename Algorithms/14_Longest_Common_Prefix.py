# Write a function to find the longest common prefix string amongst an array of strings.
# If there is no common prefix, return an empty string "".

# Example 1:
# Input: strs = ["flower","flow","flight"]
# Output: "fl"

# Example 2:
# Input: strs = ["dog","racecar","car"]
# Output: ""
# Explanation: There is no common prefix among the input strings.

# Constraints:
# 1 <= strs.length <= 200
# 0 <= strs[i].length <= 200
# strs[i] consists of only lower-case English letters.

class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        comstr="" # most common string
        for i in range(len(strs[0])): # iterate through the first word
            tmp = strs[0][0:i+1] #add one more char at one loop
            for s in strs: #check input words
                if(s[0:i+1] != tmp): #if the words not equal to the common string
                       return comstr #return the corrent most common string
            comstr = tmp #otherwise, add one more char into the most common string
        return comstr