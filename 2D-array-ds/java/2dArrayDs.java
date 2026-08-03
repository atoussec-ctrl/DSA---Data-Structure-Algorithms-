public class Solution{

    public static void main(String[] args){

        class Array2DDs{
            public int[][] matrix;

            constructor(int[][] matrix){
                this.matrix = matrix;
            }

            public int[][] reverse2DArray(int[][] matrix){
                for(int i = 0; i < matrix.length; i++){
                    for(int j = 0; j < matrix[i].length / 2; j++){
                        for(int k = 0; k < matrix[i].length; k++){
                            int temp = matrix[i][j];
                            matrix[i][j] = matrix[i][matrix[i].length - 1 - j];
                            matrix[i][matrix[i].length - 1 - j] = temp;
                        }   
                    }
                }
                return matrix;
            }

            // Solving in a simpliest way: 
            public int[][] reverse2DArraySimplest(int[][] matrix){
                for(int i = 0; i < matrix.length; i++){
                    matrix[i] = reverseArray(matrix[i]);
                }
                return matrix;
            }

            // Helper function to reverse a 1D array
            public int[] reverseArray(int[] arr){
                int left = 0; 
                int right = arr.length - 1;
                while(left < right){
                    int temp = arr[left];
                    arr[left] = arr[right];
                    arr[right] = temp;
                    left++;
                }
                right--;
                return arr;
            }
        }
    }
}