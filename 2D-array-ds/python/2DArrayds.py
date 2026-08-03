class Solution:
    def reverse2DArray(self, arr: list[list[int]]) -> list[list[int]]:
        """
        Reverses a 2D array in place.
        :param arr: 2D array to be reversed
        :return: Reversed 2D array
        """
        # Reverse the rows of the 2D array
        arr.reverse()
        # Reverse each row of the 2D array
        for row in arr:
            row.reverse()
        return arr

    # Reverse a 2D array using slicing
    def reverse2DArraySlicing(self, arr: list[list[int]]) -> list[list[int]]:
        """
        Reverses a 2D array using slicing.
        :param arr: 2D array to be reversed
        :return: Reversed 2D array
        """
        return arr[::-1]    

# Reversing the 2D array using lamda function 
reverse2DArrayLambda = lambda arr: [row[::-1] for row in arr[::-1]]

# reversing the 2D array using list comprehension
def reverse2DArrayListComp(arr: list[list[int]]) -> list[list[int]]:
    """
    Reverses a 2D array using list comprehension.
    :param arr: 2D array to be reversed
    :return: Reversed 2D array
    """
    return [row[::-1] for row in arr[::-1]]

