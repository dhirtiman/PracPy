def linear_search(arr,target):
    for i in range(len(arr)):
        if arr[i] == target:
            return i
    return -1

numbers = [2, 5, 7, 12, 18, 21, 29, 35, 40]
target = 18

index = linear_search(numbers,target)

if index != -1:
    print("Number",target,"found at index",index)
else:
    print("Number",target,"Not found")
