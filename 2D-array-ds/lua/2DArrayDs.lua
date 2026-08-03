function hourglassSum(arr)
    local max_sum = -math.huge
    
    for i = 1, 4 do
        for j = 1, 4 do
            local current_sum = arr[i][j] + arr[i][j+1] + arr[i][j+2] +
                                arr[i+1][j+1] +
                                arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2]
            
            if current_sum > max_sum then
                max_sum = current_sum
            end
        end
    end
    
    return max_sum
end