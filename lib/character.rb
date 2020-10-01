class Character

    attr_accessor :input, :name, :list
    
    @@all = []

    def initialize(input: nil, name: nil, list: nil)
        @input = input
        @name = name 
        @list = list
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        self.all.select {|quote| quote.character == character}
    end

end
