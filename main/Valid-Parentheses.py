1class Solution:
2    def isValid(self, s: str) -> bool:
3        bracket_map = {')': '(', '}': '{', ']': '['}
4        stack = []
5
6        for char in s:
7            if char in bracket_map:
8                top_element = stack.pop() if stack else '#'
9                if bracket_map[char] != top_element:
10                    return False
11            else:
12                stack.append(char)
13
14        return not stack