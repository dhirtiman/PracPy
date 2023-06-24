def selection_sort(arr):
    n = len(arr)

    for i in range(n-1):
        min  = i

        for j in range(i+1,n):
            if arr[j] < arr[min]:
                min = j
        
        arr[i],arr[min] = arr[min],arr[i]


numbers = [5, 2, 8, 10, 3, 1, 6]

selection_sort(numbers)

print("Sorted numbers:", numbers)


