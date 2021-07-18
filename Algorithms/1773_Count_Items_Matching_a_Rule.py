# You are given an array items, where each items[i] = [typei, colori, namei]
# describes the type, color, and name of the ith item.
# You are also given a rule represented by two strings,ruleKey and ruleValue.
#
# The ith item is said to match the rule if one of the following is true:
#
# ruleKey == "type" and ruleValue == typei.
# ruleKey == "color" and ruleValue == colori.
# ruleKey == "name" and ruleValue == namei.
# Return the number of items that match the given rule.

# Example 1:
# Input: items = [["phone","blue","pixel"],["computer","silver","lenovo"],["phone","gold","iphone"]], \
#                ruleKey = "color", ruleValue = "silver"
# Output: 1
# Explanation: There is only one item matching the given rule, which is ["computer","silver","lenovo"].

# Constraints:
# 1 <= items.length <= 104
# 1 <= typei.length, colori.length, namei.length, ruleValue.length <= 10
# ruleKey is equal to either "type", "color", or "name".
# All strings consist only of lowercase letters.

#First submission
# class Solution:
#     def countMatches(self, items: List[List[str]], ruleKey: str, ruleValue: str) -> int:
#         counter = 0
#         if(ruleKey=="type"):
#             for thing in items:
#                 if(thing[0]==ruleValue):
#                     counter = counter+1
#         if(ruleKey=="color"):
#             for thing in items:
#                 if(thing[1]==ruleValue):
#                     counter = counter+1
#         if(ruleKey=="name"):
#             for thing in items:
#                 if(thing[2]==ruleValue):
#                     counter = counter+1
#         return counter

class Solution:
    def countMatches(self, items: List[List[str]], ruleKey: str, ruleValue: str) -> int:
        if (ruleKey == "type"):
            idx = 0
        elif (ruleKey == "color"):
            idx = 1
        else:
            idx = 2
        return sum(1 for i in items if i[idx] == ruleValue) #one line return
