# Definition for singly-linked list.
# class ListNode(object):
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution(object):
    def removeNthFromEnd(self, head, n):
        length = 0
        element = head
        while element:
            length += 1
            element = element.next
        # Handle edge case will be removed
        if length == n:
            return head.next
        # Find the node
        element = head
        for _ in range(length - n - 1):
            element = element.next
        # Remove the nth node from the end
        element.next = element.next.next

        return head
        