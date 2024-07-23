# Definition for singly-linked list.
# class ListNode(object):
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution(object):
    def deleteDuplicates(self, head):
        element = head
        while element and element.next:
            if element.val == element.next.val:
                element.next = element.next.next
            else:
                element = element.next
                return head
