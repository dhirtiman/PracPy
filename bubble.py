def bubble_sort(arr):
    n = len(arr)

    for i in range (n-1):
        for j in range(n - i -1):
            if arr[j] > arr[j+1]:
                arr[j],arr[j+1] = arr[j+1],arr[j]


numbers = [5, 2, 8, 10, 3, 1, 6]

bubble_sort(numbers)

print("Sorted numbers:", numbers)