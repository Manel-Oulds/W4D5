def uniq_array(arr)
    result = []
    arr.each do |x|
        result << x if !result.include?(x)
    end
    result
end

def two_sum(arr)
    result = []
    arr.each_with_index do |ele1, idx1|
        arr.each_with_index do |ele2, idx2|
            result << [idx1,idx2] if (ele1 + ele2 == 0) && (idx1 < idx2)
        end
    end
    result
end

def my_transpose(arr)
    res = []
    arr.each_with_index do |row,idx1|
        result = []
        row.each_with_index do |ele,idx2|
            result << arr[idx2][idx1] 
        end
        res << result
    end
    res
end

