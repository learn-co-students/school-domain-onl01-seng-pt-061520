
class School
    
    def initialize(school_name)
        @school = school_name
      
        @roster = {}
    end
    
    def roster
        @roster
    end

    def add_student(student_name, grade)

       if @roster.key?(grade)   
           @roster[grade] << student_name
          else
            @roster[grade] = []
            @roster[grade] << student_name
          end
    end

    def grade(num)
        @roster[num]
    end

    def sort
        @roster.map { |grade, student| [grade, student.sort] }.to_h
    end


end
