class Dog
    def initialize(hunger_level= 0)
        @hunger_level=hunger_level
    end

    def bark
        "Woof!"
    end

    def feed
        @hunger_level=0
    end

    def hungry?
        if @hunger_level > 5
            return true
        end
    end
end
