# Exercise 1 - Stack
#
# Let's write a Stack class. To do this, use the following framework:
#
  class Stack

    attr_accessor :stack

    def initialize
      # create ivar to store stack here!
      @stack = []
    end

    def push(el)
      # adds an element to the stack
      @stack << el
    end

    def pop
      # removes one element from the stack
      @stack.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @stack.last
    end
  end

## To test that your code works, create a new instance of the Stack class, and play around with adding and removing elements. Remember, a stack follows the principle of LIFO!

# Exercise 2 - Queue
#
# Now let's write a Queue class. We will need the following instance methods: enqueue(el), dequeue, and peek.
#
class Queue

  attr_accessor :queue

  def initialize
    # create ivar to store stack here!
    @queue = []
  end

  def enqueue(el)
    @queue << el
  end

  def dequeue
    @queue.shift
  end

  def peek
    @stack.first
  end
end

# Test your code to ensure it follows the principle of FIFO.
#
# Exercise 3 - Map
#
class Map

  attr_accessor :map

  def initialize(map = Array.new(1) { Array.new(2, nil)})
    @map = map
  end

  def set(key, value)
    @map << [key, value] if get(key) == false
  end

  def get(key)
    nested_arr = @map.select {|pair| pair.first == key}
    nested_arr.first
  end

  def delete(key)
    @map.each_with_index do |pair, idx|
      if pair.first == key
        @map.delete(pair)
      end
    end
  end

end

# As you saw in the videos for tonight, a map can be implemented using a 2D array. Let's write a Map class (following a similar pattern to Stack and Queue) that implements a map using only arrays.
#
# Remember, a map stores information in key-value pairs, where the keys are always unique. When implemented with arrays, a map might look something like this: my_map = [[k1, v1], [k2, v2], [k3, v2], ...].
#
# Our Map class should have the following instance methods: set(key, value), get(key), delete(key), show. Note that the set method can be used to either create a new key-value pair or update the value for a pre-existing key. It's up to you to check whether a key currently exists!
#
# As always, test your code thoroughly to make sure all properties of maps are enforced.
