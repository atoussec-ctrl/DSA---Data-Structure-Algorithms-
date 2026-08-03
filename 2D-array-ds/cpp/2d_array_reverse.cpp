#include <Vector>
#include <algorithm>
#include <iostream>
using namespace std;

vector<vector<int>> reverse2DArray(vector<vector<int>> arr) {
    for (auto &row : arr) {
        reverse(row.begin(), row.end());
    }
    return arr;
}

//  Other way to solve the 2d reverse array problem is to use the reverse function on the entire 2D array, which will reverse the order of the rows and then reverse each row individually.

vector<vector<int>> reverse2DArrayALternative(vector<vector<int>> arr){
    reverse(arr.begin(), arr.end());
    for(auto &row : arr){
        reverse(row.begin(), row.end());    
    }
    std::cout << "Reversed 2D Array: " << std::endl;
    return arr;
}

