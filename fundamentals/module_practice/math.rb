# class MathDojo
#   @@result = 0
#   def add *num
#     num.each do |n|
#       @@result += n
#     end
#     self
#   end
#   def subtract *num
#     num.each do |n|
#       @@result -= n
#     end
#     self
#   end
#   def result 
#     @@result
#   end
# end
class MathDojo
    @@result = 0
    def add *num
      num.each do |n|
        unless num.length == 1 
          n.each do |i|
            @@result += i
          end
        end
        if num.length == 1
        @@result += n
        # self
        end
      end
      self
    end
    def subtract *num
      num.each do |n|
        unless num.length == 1 
          n.each do |i|
            @@result -= i
          end
        end
        # @@result -= n
        # self
      end
      self
    end
    def result 
      @@result
    end
  end
  # challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result # => 4
  challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result # => 23.15
  # challenge1 = MathDojo.new.add(2,5).subtract(3,2).result
  # challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).result
  
  