def hourglassSum(arr)
    max_sum = -Float::INFINITY
    
    (0..3).each do |i|
        (0..3).each do |j|
            current_sum = arr[i][j] + arr[i][j+1] + arr[i][j+2] +
                          arr[i+1][j+1] +
                          arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2]
                          
            max_sum = current_sum if current_sum > max_sum
        end
    end
    
    max_sum
end