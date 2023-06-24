class Stack:
    def __init__(self):
        self.items = []
    def is_empty(self):
        return len(self.items) == 0
    

    def push(self,item):
        self.items.append(item)
    def pop(self):
        if not self.is_empty():
            return self.items.pop()
        else:
            return None
            
    def peek(self):
        if not self.is_empty():
            return self.items[-1]
        else:
            return None
        
    def size(self):
        return len(self.items)
    

# usage

stk  = Stack()

stk.push(1)
stk.push(2)
stk.push(3)

print('stack size:',stk.size())

print('Top Element:',stk.peek())

print("Pop:",stk.pop())
print("Pop:",stk.pop())

print('is empty?',stk.is_empty())

print("Pop:",stk.pop())
print('is empty?',stk.is_empty())


