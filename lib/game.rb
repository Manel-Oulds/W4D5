class TOH
    attr_accessor :array1, :array2, :array3
    def initialize
        @array1 = ["A","B","C"]
        @array2 = []
        @array3 = []
    end

    # def add(arr,ele)
    #     arr.unshift(ele)
    # end

    # def extract(arr)
    #     arr.shift
    # end

    def move(origin, destiny)
        raise"Invalid arguments" unless [origin,destiny].all?{|x| x.between?(1,3)}
        hash = { 1 => @array1, 2 => @array2, 3 => @array3 }
        if !hash[origin].empty?
            value = hash[origin].shift
            hash[destiny].unshift(value)
        else
            p 'origin is empty'
        end
    end

    def won?
        array3 == ["A","B","C"]
    end

    def run
        while !won?
            p "1st = #{array1}"
            p "2nd = #{array2}"
            p "3er = #{array3}"
            p "--------------------------"
            p 'enter your origin and destiny in format `1,2'
            origin, destiny = gets.chomp.split(",").map(&:to_i)
            move(origin,destiny) 
            if won?
                p "YOU WON THE GAME!"
            end
            p "--------------------------"
        end
    end
end

# game = TOH.new
# game.run