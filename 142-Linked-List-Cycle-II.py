# Definition for singly-linked list.
# class ListNode(object):
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution(object):
    def detectCycle(self, head):
        pointer1 = pointer2 = head
        cycle_found = False

        # Find the point
        while pointer2 and pointer2.next:
            pointer1 = pointer1.next
            pointer2 = pointer2.next.next
            if pointer1 == pointer2:
                cycle_found = True
                break

        # Find the cycle
        if cycle_found:
            pointer1 = head
            while pointer1 != pointer2:
                pointer1 = pointer1.next
                pointer2 = pointer2.next
            return pointer1

        return None
        