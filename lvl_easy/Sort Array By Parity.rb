# Given an array A of non-negative integers, return an array consisting of all the even elements of A, followed by all the odd elements of A.
# You may return any answer array that satisfies this condition.

def sort_array_by_parity(a)
    even = []
    odd = []
    a.each do |e|
        even << e if e.even?
        odd << e if e.odd?
    end
    even.concat(odd)
end

print sort_array_by_parity([3,1,2,4])