// Reversing 2D arrays using Rust safefly 


pub fn reverse_2d_array(arr: &mut Vec<Vec<i32>>){
    let mut new_arr = arr.clone();
    for row in new_arr.iter_mut(){
        row.reverse();
    }
    *arr = new_arr;
}

// Reversing 2D arrays using Rust and pointers from different memory locations
pub fn reverse_2d_array_pointer(arr: &mut Vec<Vec<i32>>){
    let mut new_arr = arr.clone();
    for row in new_arr.iter_mut(){
        row.reverse();
    }
    *arr = new_arr;
}

// Reversing 2D complex Arrays using Rust

pub fn reverse_2d_complex_array(arr: &mut Vec<Vec<i32>>){
    let mut new = arr.clone();
    new.reverse();
    *arr = new;
}