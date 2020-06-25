  class Stack

    def initialize
      # create ivar to store stack here!
      @store_val = []
    end

    def push(el)
      # adds an element to the stack
      @store_val << el
    end

    def pop
      # removes one element from the stack
      @store_val.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @store_val[-1]
    end
  end




  class Queue
    def initialize
        @store_val = []
    end

    def enqueue(el)
        @store_val << el
    end


    def dequeue
        @store_val.shift
    end

    def peek
        @store_val[0]
    end


  end



  class Map
    def initialize
        @my_map = []
    end

    def set(key, value)
        @my_map << [key, value] if @my_map.length == 0 

        @my_map.each do |ele|
            if ele[0] == key
               ele[1] = value
               return @my_map
            end
        end
        return @my_map << [key, value]
        
    end

    def get(key)
        @my_map.each do |ele|
            if ele[0] == key
                return ele
            end
        end
    end


    def delete(key)
        @my_map.each do |ele|
            if ele[0] == key
    end


    def show
        @my_map
    end


  end










