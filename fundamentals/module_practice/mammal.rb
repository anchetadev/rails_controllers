class Mammal
    def initialize(health)
        @health = 150

    end
    def display_health
        puts "#{@health},"
    end
#     def breath  
#       puts "Inhale and exhale"
#     end
    
#     def eat
#       puts "Yum yum yum"
#     end
#   end
#   class Human < Mammal # Human inherits from Mammal
#     def subclass_method
#       breath
#     end
#     def another_method
#       self.eat
#     end
end
doggy = Mammal.new
doggy.display_health