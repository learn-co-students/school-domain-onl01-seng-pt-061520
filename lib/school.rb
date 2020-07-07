class School
    attr_reader :roster, :name

    def initialize(name)
        @name = name
        @roster={} #initializing roster
    end

    def add_student(name, grade)
        if @roster[grade]
            @roster[grade] << name
        else
            @roster[grade] = [name]
        end
    end
    
    def grade(level)
        @roster.detect do |x, y| 
          if x == level
            return y 
           end 
        end 
    end 

    def sort 
        new_hash = {}
        @roster.each do |x, y| 
          new_hash[x] = y.sort 
        end 
        new_hash
      end
end
