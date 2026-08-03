function hourglassSum(arr: number[][]): number {
    let maxSum: number = Number.MIN_SAFE_INTEGER;

    for (let i = 0; i < 4; i++) {
        for (let j = 0; j < 4; j++) {
            let currentSum = arr[i][j] + arr[i][j+1] + arr[i][j+2] +
                             arr[i+1][j+1] +
                             arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2];
                
            maxSum = Math.max(maxSum, currentSum);
        }
    }
    
    return maxSum;
}