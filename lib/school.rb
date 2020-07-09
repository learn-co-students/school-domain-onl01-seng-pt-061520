class School
     attr_reader :add_student, :roster

     def initialize (school)
         @school = school
         @roster = {}
     end

     # def roster #why did this work on a veriable?
     #     @roster
     # end

     def add_student (name, grade)
         # @student_name = name
         # @grade = grade
         if @roster.include?(grade) 
             @roster [grade] << name  
         else
             @roster [grade] = [name]
         end
     end

     def grade (num)
         @roster [num] 
     end

     def sort
         @roster.each {|grade, student| @roster [grade] = student.sort}
     end
    
 end
