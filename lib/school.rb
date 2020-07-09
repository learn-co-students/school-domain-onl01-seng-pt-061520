class School

    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        @roster[grade] = [] if @roster.keys.include?(grade) == false
        @roster[grade] << name
    end

    def grade(num)
        @roster[num]
    end

    def sort
        result = {}
        @roster.each do |grade, name|
            result[grade] = name.sort
        end
        result
    end
end