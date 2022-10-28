
#  list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

def my_min(list)
    smallest_num = list.first
    list.each_with_index do |num1, i1|
        list.each_with_index do |num2, i2|
            if i2 > i1 && num1 < smallest_num
                smallest_num = num1
            end
        end
    end
    smallest_num
end
# O(n^2)

def my_min_p2(list)
    list.inject do |acc, ele|
        if acc > ele
            ele
        else
            acc
        end
    end
end
# O(n)





def largest_contiguous_subsum(list)
    subarrays = []
    (0...list.length).each do |i|
        (0...list.length).each do |j|
            subarrays << list[i..j] if list[i..j].length >= 1
        end
    end # n^2
    subarrays.map! {|subarr| subarr.sum} #n
    subarrays.max #n 
end
#O n^2 + 2n
#O(n^2)

# p largest_contiguous_subsum(list)
# p largest_contiguous_subsum(list1)
# p largest_contiguous_subsum(list2)

def largest_contiguous_subsum2(list) 
    largest_sum = list[0]
    next_sum = 0

    (0...list.length).each do |i| # 0
        next_sum += list[i]# 5
        if next_sum > largest_sum # true
            largest_sum = next_sum  # 5
        elsif next_sum < 0 
            next_sum = 0
        end
    end

    largest_sum
end

# O(n)

list = [5, 3, -7] 
list1 = [2, 3, -6, 7, -6, 7]  
list2 = [-5, -1, -3] 

p largest_contiguous_subsum2(list)
p largest_contiguous_subsum2(list1)
p largest_contiguous_subsum2(list2)

