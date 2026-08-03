<?php 


$arr = [[1, 2, 3], [4, 5, 6], [7, 8, 9]];

function reverse2Darray($arr){
    $reversedArr = array_reverse($arr);
    foreach($reversedArr as &$subArr){
        $subArr = array_reverse($subArr);   
    }
    return $reversedArr;
}

# Reverse a 2D array in PHP using a for loop

function reverse2DarrayLoop($arr){
    $reversedArr = new Array();

    for($i = count($arr)  - 1; $i >= 0; $i--){
        $subArr = new Array();

        for($j = count($arr[$i]) - 1; $j >= 0; $j--){
            $subArr[] = $arr[$i][$j];
        }
        $reversedArr[] = $subArr;
    }
    return $reversedArr;
}

?>