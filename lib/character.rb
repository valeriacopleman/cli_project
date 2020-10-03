class Character

    attr_accessor :name, :nickname, :status
    
    @@all = []

    def initialize(name:  nil, nickname: nil, status: nil)
        @name = name 
        @nickname = nickname
        @status = status
        @@all << self
    end

    def self.all
        @@all
    end

end
