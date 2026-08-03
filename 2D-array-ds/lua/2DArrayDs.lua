-- Reversing 2D array in Lua


function reverse2DArray(arr)
    local reversedAr = {}

    for i = #arr, 1, -1 do
        local row = arr[i]
        local reversedRow = {}

        for j = #row, 1, -1 do
            table.insert(reversedRow, row[j])
        end
        table.insert(reversedAr, reversedRow)
    end
    return reversedAr
end