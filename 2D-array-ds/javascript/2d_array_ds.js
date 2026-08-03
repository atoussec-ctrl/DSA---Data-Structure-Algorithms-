// reversing array in Javascript 


// with for methods: 

const reverseArrayWithFor = (arr) => {
    let reversedArr = [];

    for(let i = arr.length - 1; i >= 0; i--){
        element = arr[i];
        reversedArr.push(element);
        console.log(reversedArr);
    }
    return reversedArr;
}

reverseArrayWithFor([1, 2, 3, 4, 5]);

const reversedArrayWithForEach = (arr) => {
    let reversedArr = [];       
    arr.forEach((e, i) => {
        reversedArr.unshift(e);
    });
    return reversedArr;
}

const reversedArrayWithMao = (arr) => {
    let reversedArr = arr.map((e, i) => {
        return arr[arr.length -1 - i];
    });
    return reversedArr;
}

const reversedArrayWithReduce = (arr) => {
    const reversedArr = arr.reduce((acc, curr) => {
        acc.unshift(curr);
        return acc;
    }, []);
    return reversedArr;
}

const reverse2DArrayWithES6 = (arr) => {
    return arr.map((e,i) => e.acc.unshift(e));
}