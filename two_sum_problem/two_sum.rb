def two_sum?(arr, target_sum)

    values = {}

    arr.each do |ele|
        diff = target_sum - ele
        if values.has_key?(diff) #hash.has_key? is O(1)
            return true
        else
            values[ele] = diff #doesn't matter what you assign as the value here 
        end
    end

    false
end
# O(n)

arr1 = [2, 4, 7, 20]
arr = [2, 4, 7, 8] 
target_sum = 12

p two_sum?(arr, target_sum) #true
p two_sum?(arr1, target_sum) #false