pub fn reverse_array(arr: &mut Vec<i32>){
    arr.reverse();
}

// If the problem waits a new vector as return

pub fn reverse_array_new(arr: &Vec<i32>) -> Vec<i32> {
    let mut new_arr = arr.clone();
    new_arr.reverse();
    new_arr
}