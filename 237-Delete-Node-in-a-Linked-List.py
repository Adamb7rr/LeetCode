# Definition for singly-linked list.
# class ListNode(object):
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution(object):
    def deleteNode(self, node):
        if node.next is None or node is None:
            return

        node.val = node.next.val
        node.next = node.next.next