class School
    attr_accessor :name, :roster
    
    def initialize(name)
        @name = name 
        @roster = {}
    end 

    def add_student(student, grade)
        roster[grade] ||= []
        roster[grade] << student
    end 

    def grade(grade)
        roster.detect do |r, s|
            if r == grade
                return s 
            end 
        end 
    end
def sort 
    new_hash ={}
    roster.each do |x, y|
        new_hash [x] = y.sort
    end 
    new_hash
end

end 