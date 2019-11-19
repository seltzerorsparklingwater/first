class Stack
    
    #FILO

    def initialize
        @stack_arr = []
    end

    def push(el)
        @stack_arr << [el]
    end

    def pop
        @stack_arr.pop
    end

    def peek
        return @stack_arr[-1]
    end

end

class Queue
    #FIFO
    def initialize
        @queue_arr = []
    end

    def enqueue(el)
        @queue_arr << el
    end

    def dequeue
        @queue_arr.shift
    end

    def peek
        @queue_arr[0]
    end
end


class Map

    def initialize
        @map_arr = []

    end

    def set(key, val)

        found = false
        @map_arr.each_with_index do |pair, idx|
            if pair[0] == key
                pair[0] = key
                pair[1] = val
                found = true
                break
            end
        end
        #@map_arr << [key, val] if @map_arr.none? { |pair| pair[0] == key}
        @map_arr << [key, val] if !found
    end

    def get(key)

        found = false
        @map_arr.each_with_index do |pair, idx|
            if pair[0] == key
                found = true
                return pair[1]
            end
        end
        return nil if !found
    end

    def delete(key)
        value = get(key)
        @map_arr.reject! {|pair| pair[0] == key}
    end

    def show
        @map_arr
    end

end