#INEFFICIENT ALGORITHM BELOW

# def first_anagram?(str1,str2)
#     anagrams = []
#     until anagrams.length == factorial(str1.length)
#         shuffled = str1.split("").shuffle.join
#         anagrams << shuffled if !anagrams.include?(shuffled)
#     end
#     anagrams.include?(str2)
# end

# def factorial(num)
#     return 1 if num <= 1

#     num * factorial(num-1)
# end



def second_anagram?(str1, str2)
    str1.each_char.with_index do |char, i|
        idx_2 = str2.index(char)
        return false if idx_2.nil?
        str2.slice!(idx_2)
    end
    return true if str2.length == 0
    false
end

# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")    #=> true

def third_anagram?(str1, str2)
    str1_sorted = str1.split("").sort
    str2_sorted = str2.split("").sort
    str1_sorted == str2_sorted
end

def fourth_anagram?(str1, str2)
    ana_hash = Hash.new(0)
    str1.each_char {|char| ana_hash[char] += 1}
    str2.each_char {|char| ana_hash[char] += 1}
    return false if ana_hash.values.any? {|v| v.odd?}
    true
end

p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")    #=> true