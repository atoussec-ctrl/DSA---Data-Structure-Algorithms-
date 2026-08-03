const reverse2DArray = (array: number[][]): number[][] => {
    return array.reverse();
}

// reversing a 2D array in TypeScript can be done by reversing the outer array, which effectively reverses the order of the rows. The inner arrays (rows) remain unchanged.

function reverse2DArrayInPlace(array: number[][]): number[][]{
    let start = 0;
    let end = array.length - 1;

    while (start < end){
        // Swap the rows
        let temp = array[start];
        array[start] = array[end];
        array[end] = temp;
        start++;
        end--;
    }
    return array;
}

// reverse the 2D array using the built-in reverse method
const reverse2DArrayReverse = (array: number[][]): number[][] => {
    return array.reverse();
}

// Reverse the 2d array using map function and reverse method

const reverse = (arr: number[][]): number[][] => {
    return arr.map(row => row.reverse()).reverse(); 
}

const arr2 = [[1, 2, 3], [4, 5, 6], [7, 8, 9]];
arr2.map(row => row.reverse()).reverse(); // Output: [[9, 8, 7], [6, 5, 4], [3, 2, 1]]