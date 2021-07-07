class School 
    
    attr_reader :roster

    def initialize(roster)
        @roster = {}
    end

    def add_student(student, grade)
        # @roster[grade] = [] unless @roster.key?(grade) == true
        @roster[grade] ||= []
        @roster[grade] << student
    end

    def grade(num)
        @roster[num]
    end

    def sort
        sorted_hash = {}
        @roster.each do |grade, students|
            sorted_hash[grade] = students.sort
        end
        sorted_hash
    end
end