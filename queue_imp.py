class Queue:
    def __init__(self):
        self.items = []

    def is_empty(self):
        return len(self.items) == 0

    def enqueue(self, item):
        self.items.append(item)

    def dequeue(self):
        if not self.is_empty():
            return self.items.pop(0)
        else:
            return None

    def size(self):
        return len(self.items)

    # example


queue = Queue()

queue.enqueue("appke")
queue.enqueue("banana")
queue.enqueue("cherry")

print("Queue size:", queue.size())  # Output: 3

print("Dequeue:", queue.dequeue())  # Output: "aDpple"
print("Dequeue:", queue.dequeue())  # Output: "banana"

print("Is empty?", queue.is_empty())  # Output: False
