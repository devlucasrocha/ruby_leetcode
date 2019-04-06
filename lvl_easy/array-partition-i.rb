# Given an array of 2n integers, your task is to group these integers into n pairs of integer, say (a1, b1), (a2, b2), ..., (an, bn) which makes sum of min(ai, bi) for all i from 1 to n as large as possible.

def array_pair_sum(nums)
    sum_of_min_of_each_pair = 0
    size_of_array = nums.size
    array_of_pairs = []
    nums.sort!
    if size_of_array == 2
        sum_of_min_of_each_pair = nums.min
    else
        array_of_pairs << nums.each_slice(2).to_a
        array_of_pairs = array_of_pairs[0]
        sum_of_min_of_each_pair = array_of_pairs.map {|v| v.min }.sum
    end
    sum_of_min_of_each_pair
end

# [1, 1] => 1
# [7,3,1,0,0,6] => 7
# [1,4,3,2] => 4

arr = [1, 1]

print array_pair_sum(arr)