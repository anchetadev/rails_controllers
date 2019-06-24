module MyEnumerable
    def my_each
      # your code here!
      for i in self
        puts i
      end
      for i in self
        puts i * 10
      end
    end
  end
  class Array
     include MyEnumerable
  end
  [1,2,3,4].my_each { |i| puts i } # => 1 2 3 4
  [1,2,3,4].my_each { |i| puts i * 10 } # => 10 20 30 40
  