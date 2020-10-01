class Character

    attr_accessor :input, :name, :quote
    
    @@all = []

    def initialize(input: nil, name:  nil, quote: nil)
        @input = input
        @name = name 
        @quote = quote
        @@all << self
    end

    def self.all
        @@all
    end

end
