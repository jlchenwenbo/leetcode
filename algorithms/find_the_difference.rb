# https://leetcode.com/problems/find-the-difference/
#
# Given two strings s and t which consist of only lowercase letters. String t is
# generated by random shuffling string s and then add one more letter at a
# random position. Find the letter that was added in t.
#
# Example:
#
#     Input: s = "abcd", t = "abcde"
#     Output: e
#     Explanation: 'e' is the letter that was added.


# @param {String} s
# @param {String} t
# @return {Character}
def find_the_difference(s, t)
  m = Hash.new { |h, k| h[k] = 0 }
  s.each_char { |c| m[c] += 1 }
  t.each_char { |c| m[c] -= 1 }
  m.each { |k, v| return k if v.nonzero? }
end