def binary_search(arr,target):
    low = 0
    high = len(arr) - 1

    while low <= high:
        mid = (low + high) // 2
        mid_value = arr[mid]

        if mid_value == target:
            return mid
        elif mid_value < target:
            low = mid + 1
        else: 
            high = mid - 1

    return -1

numbers = [2, 5, 7, 12, 18, 21, 29, 35, 40]
target = 35

index = binary_search(numbers,target)

if index != -1:
    print("Number",target,"found at index",index)
else:
    print("Number",target,"Not found")
