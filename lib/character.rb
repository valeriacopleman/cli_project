class Character

    attr_accessor :input, :name
    
    @@all = []

    def initialize(input: nil, name:  nil)
        @input = input
        @name = name 
        @@all << self
    end

    def self.all
        @@all
    end

end
