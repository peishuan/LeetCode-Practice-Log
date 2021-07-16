# Given a string s and an integer array indices of the same length.
# The string s will be shuffled such that the character at the ith position moves to indices[i] in the shuffled string.
# Return the shuffled string.

# ex1:
# Input: s = "codeleet", indices = [4,5,6,7,0,2,1,3]
# Output: "leetcode"
# Explanation: As shown, "codeleet" becomes "leetcode" after shuffling.
# ex2:
# Input: s = "abc", indices = [0,1,2]
# Output: "abc"
# Explanation: After shuffling, each character remains in its position.

#Constraints:
#s.length == indices.length == n
#1 <= n <= 100
#s contains only lower-case English letters.
#0 <= indices[i] < n
#All values of indices are unique (i.e. indices is a permutation of the integers from 0 to n - 1).

class Solution:
    def restoreString(self, s: str, indices: List[int]) -> str:
        opt = [""]*len(indices)
        for i in range(len(indices)):
            opt[indices[i]]=s[i] #直接用指定的可以都用i的index run through
        return "".join(opt) #return時能不多用變數就省下