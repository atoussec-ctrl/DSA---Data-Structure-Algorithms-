hourglassSum <- function(arr) {
    max_sum <- -Inf
    
    for (i in 1:4) {
        for (j in 1:4) {
            current_sum <- arr[i, j] + arr[i, j+1] + arr[i, j+2] +
                           arr[i+1, j+1] +
                           arr[i+2, j] + arr[i+2, j+1] + arr[i+2, j+2]
                           
            max_sum <- max(max_sum, current_sum)
        }
    }
    
    return(max_sum)
}