class School
  
  attr_accessor
  attr_reader :roster
  def initialize(roster)
    if @roster = roster
      @roster = {}
    end
    
    def add_student(student, grades)
      if @roster.include? grades
        @roster[grades] << "#(student)"
      else
        @roser[grades] = []
        @roster[grades] << "#(student)"
      end
    end
    
    def grade(level)
      @roster[grade_level]
    end
    
    def sort
      @roster.each do |grades, students|
        students.sort!
      end
    end
  end
      