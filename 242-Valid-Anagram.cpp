#include <string>
#include <array>

class Solution {
public:
    bool isAnagram(std::string s, std::string t) {
        if (s.length() != t.length()) {
            return false;
        }
        
        std::array<int, 26> charCount = {0};
        
        for (char c : s) {
            charCount[c - 'a']++;
        }
        
        for (char c : t) {
            charCount[c - 'a']--;
        }
        
        for (int count : charCount) {
            if (count != 0) {
                return false;
            }
        }
        
        return true;
    }
};