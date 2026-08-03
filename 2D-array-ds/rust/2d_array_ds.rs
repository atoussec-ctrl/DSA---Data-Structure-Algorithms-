pub fn hourglass_sum(arr: &[Vec<i32>]) -> i32 {
    let mut max_sum = i32::MIN;

    for i in 0..4 {
        for j in 0..4 {
            let current_sum = arr[i][j] + arr[i][j+1] + arr[i][j+2] +
                              arr[i+1][j+1] +
                              arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2];
                              
            max_sum = max_sum.max(current_sum);
        }
    }
    
    max_sum
}