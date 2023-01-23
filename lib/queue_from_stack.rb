require_relative './stack'

class MyQueue
    
    def initialize
        @s1 = Stack.new
        @s2 = Stack.new
    end

    def add(value)
        move(@s2, @s1)
        @s1.push(value)
        move(@s1, @s2)
    end

    def remove
        @s2.pop
    end

    def peek
        @s2.peek
    end

    def move(here, there)
        there.push(here.pop) until here.empty?
    end
end