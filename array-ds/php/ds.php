<?php

$arr = [1, 2, 3, 4, 5];

function reverseArray($arr){
    return array_reverse($arr);
}

// Reverse an array in PHP using a for loop
function reverseArrayLoop($arr){
    // old way to create arrays in php 4,5,6,7
    $reversedArr = new Array();
    for($i = count($arr) - 1; $i >= 0; $i--){
        $reversedArr[] = $arr[$i];
    }
    return $reversedArr;
}

?>