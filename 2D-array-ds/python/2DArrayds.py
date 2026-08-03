
def hourglassSum(arr):
    max_sum = float('-inf') # Start with the lowest possible number
    
    for i in range(4):
        for j in range(4):
            # Grab the top, middle, and bottom of the hourglass
            top = sum(arr[i][j:j+3])
            mid = arr[i+1][j+1]
            bottom = sum(arr[i+2][j:j+3])
            
            # Calculate total and update max_sum if it's the highest so far
            hourglass = top + mid + bottom
            max_sum = max(max_sum, hourglass)
            
    return max_sum